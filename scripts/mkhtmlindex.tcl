#!/usr/bin/env tclsh

package require Tcl 8.6.2-;	# Uses [string cat]

# Validation URLs
array set RE {
    BR {^[-\w]+$}
    TKT {^[a-f0-9]+$}
    URL {^(?:https?|ftp)://[-\w.]+/[^\s""`']*$}
}

# Some TIPs are jokes
set jests {131 263 365}

proc appendn {var str} {
    upvar 1 $var vbuf
    append vbuf $str\n
}

proc writeHeader {} {
    global indexbuf json
    appendn indexbuf \
{# TIP Index

<div>
Welcome to the Tcl Improvement Proposals repository. For information on how to raise a new TIP see <a href="./doc/help.md">Help</a>
<p>
</div>
<form method='GET' action='../../search'>
<div class='searchForm'>
<input type="text" name="s" size="40" value="" autofocus>
<select size='1' name='y'>
<option value='all' selected>All</option>
<option value='c'>Check-ins</option>
<option value='d'>Docs</option>
<option value='t'>Tickets</option>
</select>
<input type="submit" value="Search">
</div></form>
<p>

<style title="filtering">
/*
 * DO NOT MANUALLY PUT ANY STYLES IN HERE!
 *
 * This is manipulated by JS and it makes a lot of assumptions about the
 * structure of this stylesheet. Use a different stylesheet instead!
 */
</style>
<script>
var sheet = (function(){
    for (var i=0; i<document.styleSheets.length; i++) {
        var s = document.styleSheets[i];
        if (s.title == "filtering") {
            return s;
        }
    }
})();
function toggleFacet(f) {
    r = sheet.cssRules;
    if (!r) return
    boxes = document.getElementsByClassName("toggler-"+f);
    none = true;
    for (i=0; i<boxes.length; i++) {
        if (boxes[i].checked) {
            none=false;
            break;
        }
    }
    var i = r.length;
    while (i--) {
        if (r[i].selectorText && r[i].selectorText.substr(1,f.length).toLowerCase() === f) {
            sheet.deleteRule(i);
        }
    }
    if (!none) {
        for (i=0; i<boxes.length; i++) {
            if (boxes[i].checked) {
                // sheet.insertRule("."+f+"-"+boxes[i].dataset.value + " {display:table-row;}", 0);
	    } else {
                sheet.insertRule("."+f+"-"+boxes[i].dataset.value + " {display:none;}", 0);
            }
        }
    }
}
</script>

#TOGGLES#

</div>
<p>

<div style="float:right; font-size:10pt" class="tipindex key">
<table border="1" cellpadding="2" cellspacing="0" class="key">
<thead><tr><th>Key</th</tr></thead><tbody>
<tr class="state-draft"><td>Draft Project</td></tr>
<tr class="state-draft version-86"><td>Draft Project (8.6)</td></tr>
<tr class="state-voting"><td>In Current Vote</td></tr>
<tr class="state-accepted"><td>Accepted Project</td></tr>
<tr class="state-rejected"><td>Rejected Project</td></tr>
<tr class="state-withdrawn"><td>Withdrawn Project</td></tr>
<tr class="state-final"><td>Final Project</td></tr>
<tr class="type-process"><td>Process TIP</td></tr>
<tr class="type-informational"><td>Informational TIP</td></tr>
</tbody></table></div>

<div class="tipindex index">
<table border="1" cellpadding="2" cellspacing="0" class="sortable" id="tipTable">
<thead><tr>
<th>#</th>
<th>Type</th>
<th>Tcl Version</th>
<th>Status</th>
<th>Title</th>
<th>Impl.</th>
</tr></thead><tbody>
}
    puts -nonewline $json "\{\"tip\": \{"
}

proc writeFooter {} {
    global index json max
    puts $index {</tbody></table>}
    puts $index {</div>}
    puts $json "\n\t\"@min\": 0,\n\t\"@max\": $max\n\}, \"@timestamp\": [clock seconds]\}"
}

proc encodeHTML {string} {
    return [string map {< &lt; > &gt; \" &quot; & &amp; ' &apos;} $string]
}

proc encodeJSON {string} {
    return [string cat \" [string map {\" \\\" \\ {\\}} $string] \"]
}

set toggles {}

proc writeRow {number varName} {
    global indexbuf json jests RE
    upvar 1 $varName fields
    set titlecolumnspan ""

    set state $fields(state)
    if {[info exists fields(obsoleted-by)]} {
	set state "Obsoleted"
    }
    if {[info exists fields(vote)] && $fields(vote) eq "In progress"} {
	set state "Voting"
    }

    set type $fields(type)
    if {[string match -nocase "info*" $type]} {
	set type "Informational"
    } elseif {$number in $jests} {
	set type "humor"
    }

    if {[info exists fields(tcl-version)]} {
	set vinfo [regexp -all -inline {(?:^|\s)(\d+)(?:\.(\d+))?} $fields(tcl-version)]
	foreach {match v1 v2} $vinfo {
	    lappend version $v1$v2
	}
    }

    if {[string tolower $type] in {process informational}} {
	set titlecolumnspan " colspan=2"
    }

    # Decode links to branches and tickets with implementations
    if {[info exists fields(tcl-branch)]} {

        if {[regexp $RE(BR) $fields(tcl-branch)]} {
            set link [format "/tcl/timeline?r=%s" $fields(tcl-branch)]
        } else {
            puts stderr "WARNING: $number has invalid Tcl-Branch field"
        }
    } elseif {[info exists fields(tk-branch)]} {
        if {[regexp $RE(BR) $fields(tk-branch)]} {
            set link [format "/tk/timeline?r=%s" $fields(tk-branch)]
        } else {
            puts stderr "WARNING: $number has invalid Tk-Branch field"
        }
    } elseif {[info exists fields(tcl-ticket)]} {
        if {[regexp $RE(TKT) $fields(tcl-ticket)]} {
            set link [format "/tcl/tktview/%s" $fields(tcl-ticket)]
        } else {
            puts stderr "WARNING: $number has invalid Tcl-Ticket field"
        }
    } elseif {[info exists fields(tk-ticket)]} {
        if {[regexp $RE(TKT) $fields(tk-ticket)]} {
            set link [format "/tk/tktview/%s" $fields(tk-ticket)]
        } else {
            puts stderr "WARNING: $number has invalid Tk-Ticket field"
        }
    } elseif {[info exists fields(implementation-url)]} {
        if {[regexp $RE(URL) $fields(implementation-url)]} {
            set link $fields(implementation-url)
        } else {
            puts stderr "WARNING: $number has invalid Implementation-URL field"
        }
    }

    set class [join [lmap axis {state type version} {
        if {![info exists $axis]} continue
        foreach av [set $axis] {
	    dict set ::toggles $axis $av 1
	}
        lmap av [set $axis] {string cat $axis-[string tolower $av]}
    }] " "]

    appendn indexbuf "<tr class='$class'>"
    appendn indexbuf "<td valign='top'><a href='./tip/$number.md'>$number</a></td>"

    if {[info exists fields(tcl-version)]} {
	appendn indexbuf "<td valign='top'>[encodeHTML $type]</td>"
	appendn indexbuf "<td valign='top'>[encodeHTML $fields(tcl-version)]</td>"
    } else {
	appendn indexbuf "<td valign='top' colspan=2>[encodeHTML $type]</td>"
    }
    appendn indexbuf "<td valign='top'>[encodeHTML $state]</td>"
    regsub {^#\s*TIP\s*\d+:\s*} $fields(title) "" title
    appendn indexbuf "<td valign='top' $titlecolumnspan><a href='./tip/$number.md'>[encodeHTML $title]</a></td>"

    if {[info exist link]} {
        appendn indexbuf  "<td valign='top'><a href='$link'>Link</a></td>"
    } elseif {$titlecolumnspan eq ""} {
        appendn indexbuf "<td></td>"
    }

    appendn indexbuf "</tr>"

    puts -nonewline $json "\n\t\"$number\":\{\"url\":[encodeJSON ./tip/$number.md],"
    foreach f [array names fields] {
	if {$f eq "author"} {
	    puts -nonewline $json "[encodeJSON $f]:\[[join [lmap a $fields($f) {encodeJSON $a}] ,]\],"
	} else {
	    puts -nonewline $json \
		"[encodeJSON $f]:[encodeJSON $fields($f)],"
	}
    }
    puts -nonewline $json \
	"\"is-jest\":[expr {$number in $jests ? {true} : {false}}]"
    puts -nonewline $json "\},"
}

proc loadTIPPreamble {number} {
    global dir
    set sourcefile [open [file join $dir tip/$number.md]]
    try {
	fconfigure $sourcefile -encoding utf-8
	return [split [regsub {\n-----.*} [read $sourcefile] {}] "\n"]
    } finally {
	close $sourcefile
    }
}

proc parsePreamble {lines varName} {
    upvar 1 $varName fields
    set lines [lassign [lmap line $lines {string trim $line}] title]
    set fields(title) [string trim [regsub {^[^:]:} $title ""]]
    foreach line $lines {
	regexp {^(?:([^:]+):\s*)?(.*)?$} $line -> key value
	if {[string equal -nocase $key author]} {
	    lappend fields([string tolower $key]) [string trim $value]
	} else {
	    set fields([string tolower $key]) [string trim $value]
	}
    }
}

set dir [file join [file dirname [info script]] ..]
set index [open [file join $dir index.md] w+]
set json [open [file join $dir index.json] w+]
fconfigure $index -translation lf -encoding utf-8
fconfigure $json -translation lf -encoding utf-8

set indexbuf ""

writeHeader

set max 0
foreach tip [lsort -decreasing -dictionary [glob [file join $dir tip/*.md]]] {
    set number [file tail [file rootname $tip]]
    if {![string is integer -strict $number]} {
	puts stderr "WARNING: skipping non-standard filename: $tip"
	continue
    }
    set max [expr {max($max,$number)}]
    unset -nocomplain fields
    set lines [loadTIPPreamble $number]

    parsePreamble $lines fields
    writeRow $number fields
}

set button {
    <input class="toggler-#FACET#"
        data-value="#VALUE#"
        type="checkbox"
        onclick="toggleFacet('#FACET#')">#TITLE#</button>
}
set TOGGLES ""
set STYLES ""
dict for {axis values} $toggles {
    appendn TOGGLES "[string totitle $axis]:"
    foreach val [lsort [dict keys $values]] {
        set map [list]
        lappend map #FACET# $axis
        lappend map #VALUE# [string tolower $val]
        lappend map #TITLE# [regsub {^(\d)(\d)$} [string totitle $val] {\1.\2}]
        appendn TOGGLES [string map $map $button]
        appendn STYLES ".$axis-[string tolower $val] {display: table-row }"
    }
    appendn TOGGLES "<br>"
}

puts $index [string map [list #TOGGLES# $TOGGLES #STYLES# "<style title=\"filtering\">$STYLES</style>"] $indexbuf]

writeFooter

close $index
close $json
