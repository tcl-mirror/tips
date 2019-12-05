proc usage {} {
    puts stderr "\nUsage: [file tail [info nameofexecutable]] $::argv0 COMMAND TIPFILE ..."
    puts stderr "COMMAND may be add or remove."
    puts stderr "add - A Table of Contents is added/updated for each file"
    puts stderr "remove - All Table of Contents markup is removed from each file"
    puts stderr "\nIn both cases, a backup is made of the file"
    exit 1
}

proc insert_toc {command tipfile} {
    if {$command ni {add remove}} {
        puts stderr "Error: Unknown command '$command'"
        usage
    }

    set bak "[file rootname $tipfile]-[clock format [clock seconds] -format %a,%H%M%S].bak"
    file copy -force -- $tipfile $bak
    puts stderr "$tipfile backed up to $bak"

    # Open in binary mode so we preserve existing line ending style
    set fd [open $tipfile rb]
    set lines [split [read $fd] \n]
    close $fd

    set toc {}
    set header {}
    set content {}
    set anchor_id 1
    set state SKIP_HEADER
    foreach line $lines {
        switch -exact -- $state {
            SKIP_HEADER {
                lappend header $line
                if {[regexp {^-+\s*} $line]} {
                    set state PARSE_CONTENT
                }
            }
            SKIP_TOC {
                # Skipping over existing ToC
                if {[regexp {^\s*<!-- TOC END -->} $line]} {
                    set state PARSE_CONTENT
                }
            }
            PARSE_CONTENT {
                if {[regexp {^\s*<!-- TOC BEGIN .*-->} $line]} {
                    # Start of old existing ToC. Throw it away
                    set state SKIP_TOC
                } elseif {[regexp {^(#+)\s*(<a id='toc-\d+'></a>)?(.*)$} $line -> level anchor text]} {
                    # Section heading
                    incr anchor_id
                    lappend toc $anchor_id [string length $level] $text
                    if {$command eq "add"} {
                        lappend content "$level <a id='toc-$anchor_id'></a>$text"
                    } else {
                        lappend content "$level $text"
                    }
                } else {
                    # Regular line
                    lappend content $line
                }
            }
        }
    }

    # Output the header
    set fd [open $tipfile wb]
    puts $fd [join $header \n]
    if {$command eq "add"} {
        # Output ToC as a nested list
        puts $fd "<!-- TOC BEGIN (auto generated with tiptoc) -->"
        foreach {anchor_id level text} $toc {
            set indent [string repeat "    " [incr level -1]]
            puts $fd "${indent}* <a href='#toc-$anchor_id'>$text</a>"
        }
        puts $fd "\n<!-- TOC END -->"
    }
    puts $fd [join $content \n]
    close $fd

    puts stderr "$tipfile updated"
}

if {[llength $argv] < 2} usage
foreach arg [lrange $argv 1 end] {
    insert_toc [lindex $argv 0] $arg
}
