#!/usr/bin/env tclsh

package require Tcl 8.6.2-;	# Uses [string cat]

# Some TIPs are jokes
set jests {131 263 365}

proc writeHeader {} {
    global index json
    puts $index \
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

Filter Toggles:
<style title="filtering">
.rejected {
    display: none;
}
.withdrawn {
    display: none;
}
.obsoleted {
    display: none;
}
.deferred {
    display: none;
}
.jest {
    display: none;
}
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
function toggleClass(cls) {
    r = sheet.cssRules;
    if (r) {
	var i = r.length;
	while (i--) {
	    if (r[i].selectorText && r[i].selectorText.toLowerCase() === cls) {
		sheet.deleteRule(i);
		return;
	    }
	}
    }
    sheet.insertRule(cls + " {display:none;}", 0);
}
</script>
<input type="checkbox" onclick="toggleClass('.projectdraft')">Drafts</button>
<input type="checkbox" onclick="toggleClass('.projectfinal')">Finals</button>
<input type="checkbox" onclick="toggleClass('.project')">Projects</button>
(<input type="checkbox" onclick="toggleClass('.project84')">8.4</button>
 <input type="checkbox" onclick="toggleClass('.project85')">8.5</button>
 <input type="checkbox" onclick="toggleClass('.project86')">8.6</button>
 <input type="checkbox" onclick="toggleClass('.project87')">8.7</button>
 <input type="checkbox" onclick="toggleClass('.project90')">9.0</button>)
<input type="checkbox" onclick="toggleClass('.informational')">Informationals</button>
<input type="checkbox" onclick="toggleClass('.process')">Processes</button>
<input type="checkbox" onclick="toggleClass('.rejected')" checked>Rejected</button>
<input type="checkbox" onclick="toggleClass('.widthdrawn')" checked>Withdrawn</button>
<input type="checkbox" onclick="toggleClass('.obsoleted')" checked>Obsoleted</button>
<input type="checkbox" onclick="toggleClass('.deferred')" checked>Deferred</button>
<input type="checkbox" onclick="toggleClass('.jest')" checked>Jokes</button>
<p>

<div class="index">
<table border="1" cellpadding="2" cellspacing="0" class="sortable"
 id="tipTable">
<thead><tr>
<th>#</th>
<th>Type</th>
<th>Tcl Version</th>
<th>Status</th>
<th>Title</th>
</tr></thead><tbody>
}
    puts -nonewline $json "\{\"tip\": \{"
}

proc writeFooter {} {
    global index json max
    puts $index {</tbody></table>}
    puts $index {</div>}
    puts $json "\"@min\": 0, \"@max\": $max\}, \"@timestamp\": [clock seconds]\}"
}

proc encodeHTML {string} {
    return [string map {< &lt; > &gt; \" &quot; & &amp; ' &apos;} $string]
}

proc encodeJSON {string} {
    return [string cat \" [string map {\" \\\" \\ {\\}} $string] \"]
}

proc writeRow {number varName} {
    global index json jests
    upvar 1 $varName fields

    set state $fields(state)
    if {[info exists fields(obsoleted-by)]} {
	set state "Obsoleted"
    }
    set type $fields(type)
    if {[string match -nocase "info*" $type]} {
	set type "Informational"
    }
    if {[info exists fields(vote)] && $fields(vote) eq "In progress"} {
	set class "invote"
	set state "Voting"
    } elseif {$number in $jests} {
	set class "jest"
    } elseif {[string tolower $state] in {obsoleted withdrawn rejected deferred}} {
	set class [string tolower $state]
    } else {
	set class [string tolower $type]
	if {$class eq "project"} {
	    append class " [string tolower $type$state]"
	    if {[info exists fields(tcl-version)]} {
		regexp {(\d+)(?:\.(\d+))?} $fields(tcl-version) -> v1 v2
		set version $v1$v2
		append class " [string tolower $type$state$version]"
		append class " project$version"
	    }
	}
    }
    puts $index "<tr class='$class'>"
    puts $index "<td valign='top'><a href='./tip/$number.md'>$number</a></td>"
    if {[info exists fields(tcl-version)]} {
	puts $index "<td valign='top'>[encodeHTML $type]</td>"
	puts $index "<td valign='top'>[encodeHTML $fields(tcl-version)]</td>"
    } else {
	puts $index "<td valign='top' colspan=2>[encodeHTML $type]</td>"
    }
    puts $index "<td valign='top'>[encodeHTML $state]</td>"
    puts $index "<td valign='top'>[encodeHTML $fields(title)]</td>"
    puts $index "</tr>"

    puts -nonewline $json "\"$number\": \{\"url\": [encodeJSON ./tip/$number.md],"
    foreach f [array names fields] {
	if {$f eq "author"} {
	    puts -nonewline $json "[encodeJSON $f]: \[[join [lmap a $fields($f) {encodeJSON $a}] ,]\],"
	} else {
	    puts -nonewline $json \
		"[encodeJSON $f]: [encodeJSON $fields($f)],"
	}
    }
    puts -nonewline $json \
	"\"is-jest\": [expr {$number in $jests ? {true} : {false}}]"
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
	set valueList [lassign [split $line :] key]
	if {[string equal -nocase $key author]} {
	    lappend fields([string tolower $key]) [string trim [join $valueList]]
	} else {
	    set fields([string tolower $key]) [string trim [join $valueList]]
	}
    }
}

set dir [file join [file dirname [info script]] ..]
set index [open [file join $dir index.md] w+]
set json [open [file join $dir index.json] w+]
fconfigure $index -translation lf -encoding utf-8

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

writeFooter

close $index
close $json
