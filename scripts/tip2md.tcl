if {$argc != 2} {
  puts "Usage: tip2md tip-file md-file"
  exit 1
}

proc rewrite_line {line} {
  puts ..$line
  if {[string first "#image:" [string trim $line]] == 0} {
    set caption [string trim [lassign [split $line ": \t"] -> name]]
    puts "Handling image line $name: $caption"
    lappend images [glob -nocomplain assets/$name.png]
    lappend images [glob -nocomplain assets/$name.gif]
    set fname [string trim [join $images]]
    if {$fname eq {}} {
      puts stderr "Couldn't find asset $name"
    }
    set line "!\[$caption\](../$fname)" 
  } else {
    set line [escape_chars $line]
  }
  puts ..$line
  return $line
}

set markdown_escape_map [list _ \\_ * \\* ` \\` \\ \\\\ \{ \\\{ \} \\\} ( \\( ) \\) + \\+ \# \\\# ] 

proc escape_chars {line} {
  set line [string map $::markdown_escape_map $line]
  # undo escaping in URLs
  foreach url [regexp -inline -all {\[.+?\]} $line] {
    set good_url [string map [lreverse $::markdown_escape_map] $url]
    set line [string map [list $url $good_url] $line] 
  }
  return $line
}

proc rewrite_body {tip_lines} {
  # Line level rewriting
  set text_lines {}
  set in_list false
  set in_quote false
  foreach line $tip_lines {
    puts "-> $line"
    # For debug uncomment next line
    # lappend text_lines $line
    if {[string first {|} $line ] == 0} {
      set in_code true
    } else {
      set in_code false
    }
    if { !$in_code && [regexp {^\s*>} $line]} {
      set in_quote true
    } else {
      set in_quote false
    }
    if {$in_list} {
      if {![regexp {^[\s*|>]} $line] && $line ne {}} {
        set in_list false
      }
    }
    if { !$in_code && [regexp {^\s*\*} $line]} {
      set in_list true
    }
    if { !$in_code && [regexp {^\s*[0-9]+.\s} $line] } {
      set in_list true
    }
    if {!$in_code} {
      set line [rewrite_line $line]
      set line [regsub -all {\]\]}  $line "\]"]
      set line [regsub -all {\[\[}  $line "\["]
      set line [regsub -all {^(\s*)(\\\*)}  $line {\1*}]
      set line [regsub -all "'''"  $line "**"]
      set line [regsub -all "''"  $line "_"]
      set line [regsub -all "^~~~\\s*"  $line "### "]
      set line [regsub -all "^~~\\s*"  $line "## "]
      set line [regsub -all "^~\\s*"  $line "# "]
      set line [regsub -all {\[([0-9]+)\]}  $line {[\0](\1.md)}]
      set line [regsub -all {\[(https?://[[:graph:]]+)\]}  $line {\1 }]
      set line [regsub -all {https?://[[:graph:]]+}  $line {<\0>}]
      set line [string map [list | \\|] $line]
    } else {
      if {$in_list} {
        set prefix \t\t
      } else {
        set prefix \t
      }
      set line $prefix[string range $line 1 end]
    }
    if {$in_list && $in_quote} {
      set line \t$line
    }

    puts "<- $in_list:$in_quote:$line"
    lappend text_lines $line
    # lappend text_lines $in_list:$line
  }
  set text [join $text_lines \n]
  # Document level rewriting
  return $text
}

proc tip2md {file number tip_text} {
  set result {}
  set header {}
  puts "########## $number ##########"
  set in_preamble true
  foreach line [split $tip_text \n] {
    # set line [regsub -all {<[[:alnum:].]+@[[:alnum:].]+>} $line "<mail hidden>"]
    if {$in_preamble && [string trim $line] eq {}} {
        set in_preamble false
    }
    if {$in_preamble} {
      if {[string first "Title:" $line] == 0} {
        set splitted [split $line :]
        set splitted [lrange $splitted 1 end]
        set title [string trim [join $splitted :]]
        continue
      }
      if {[string first "TIP:" $line] == 0} {
        continue 
      }
      if {[string first "Version:" $line] == 0} {
        continue 
      }
      set line "\t$line"
      lappend header $line
    } else {
      lappend result $line
    }
  }
  set body [rewrite_body $result]
  set header [linsert $header 0  "# TIP $number: $title"]
  return [join $header \n]\n-----\n$body
}

lassign $argv tip md

set f [open $tip]
fconfigure $f -encoding utf-8
set tipSource [read $f]
close $f

set tipNumber [file tail [file rootname $tip]]
set f [open $md w+]
fconfigure $f -encoding utf-8
puts $f [tip2md $tip $tipNumber $tipSource]
close $f
