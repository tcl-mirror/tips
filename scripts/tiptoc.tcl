proc usage {} {
    puts stderr "\nUsage: [file tail [info nameofexecutable]] $::argv0 TIPFILE ..."
    puts stderr "Each specified file is backed up and then overwritten with an updated Table of Contents."
    exit 1
}

proc insert_toc {tipfile} {
    file copy -force -- $tipfile $tipfile.bak
    puts stderr "$tipfile backed up to $tipfile.bak"
    
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
                if {[regexp {^\s*<!-- TOC BEGIN -->} $line]} {
                    # Start of old existing ToC. Throw it away
                    set state SKIP_TOC
                } elseif {[regexp {^(#+)\s*(<a id='toc-\d+'></a>)?(.*)$} $line -> level anchor text]} {
                    # Section heading
                    incr anchor_id
                    lappend toc $anchor_id [string length $level] $text
                    lappend content "$level <a id='toc-$anchor_id'></a>$text"
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
    # Output ToC as a nested list
    puts $fd "<!-- TOC BEGIN -->"
    foreach {anchor_id level text} $toc {
        set indent [string repeat "    " [incr level -1]]
        puts $fd "${indent}* <a href='#toc-$anchor_id'>$text</a>"
    }
    puts $fd "\n<!-- TOC END -->"
    puts $fd [join $content \n]
    close $fd

    puts stderr "$tipfile ToC updated"
}

if {[llength $argv] < 1} usage
foreach arg $argv {
    insert_toc $arg
}
