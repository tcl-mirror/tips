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

<div><div>
Filter Toggles:
</div>
<div>
<input type="checkbox" id="click_projectdraft">Drafts</button>
<input type="checkbox" id="click_projectfinal">Finals</button>
<input type="checkbox" id="click_project">Projects</button>
(<input type="checkbox" id="click_project84">8.4</button>
 <input type="checkbox" id="click_project85">8.5</button>
 <input type="checkbox" id="click_project86">8.6</button>
 <input type="checkbox" id="click_project87">8.7</button>
 <input type="checkbox" id="click_project90">9.0</button>)
<input type="checkbox" id="click_informational">Informationals</button>
<input type="checkbox" id="click_process">Processes</button>
<br>
<input type="checkbox" id="click_rejected">Rejected</button>
<input type="checkbox" id="click_withdrawn">Withdrawn</button>
<input type="checkbox" id="click_obsoleted">Obsoleted</button>
<input type="checkbox" id="click_deferred">Deferred</button>
<input type="checkbox" id="click_jest">Jokes</button>
</div></div>
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
function toggleClass(cls) {
    r = sheet.cssRules;
    if (r) {
        var i = r.length;
        while (i--) {
            if (r[i].selectorText && r[i].selectorText.toLowerCase() === cls) {
		console.log("removing hide rule for " + cls);
                sheet.deleteRule(i);
                return;
            }
        }
    }
    console.log("adding hide rule for " + cls);
    sheet.insertRule(cls + " {display:none;}", 0);
}
document.addEventListener("DOMContentLoaded", function() {
    var TAGS = {
        "informational": 0, "process": 0,
        "projectdraft": 0, "projectfinal": 0, "project": 0,
        "project84": 0, "project85": 0, "project86": 0, "project87": 0,
        "project90": 0,
        "rejected": 1, "withdrawn": 1, "obsoleted": 1, "deferred": 1, "jest": 1
    };
    function toggler(selector) {
	return function() {
	    toggleClass(selector);
	}
    }
    for (var tag of Object.keys(TAGS)) {
        var id = "click_" + tag;
        var selector = "." + tag;
        document.getElementById(id).addEventListener("click", toggler(selector));
        if (TAGS[tag]) {
            document.getElementById(id).checked = true;
            toggleClass(selector);
        }
    }
});
</script>
<p>

<div style="float:right; font-size:10pt" class="key">
<table border="1" cellpadding="2" cellspacing="0">
<thead><tr><th>Key</th</tr></thead><tbody>
<tr class="projectdraft"><td>Draft Project</td></tr>
<tr class="projectdraft project86 projectdraft86"><td>Draft Project (8.6)</td></tr>
<tr class="invote"><td>In Current Vote</td></tr>
<tr class="projectaccepted"><td>Accepted Project</td></tr>
<tr class="rejected"><td>Rejected Project</td></tr>
<tr class="withdrawn"><td>Withdrawn Project</td></tr>
<tr class="projectfinal"><td>Final Project</td></tr>
<tr class="process"><td>Process TIP</td></tr>
<tr class="informational"><td>Informational TIP</td></tr>
</tbody></table></div>
<div class="index">
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

proc writeRow {number varName} {
    global index json jests
    upvar 1 $varName fields
    set titlecolumnspan ""

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
	if {$class in {process informational}} {
	    set titlecolumnspan " colspan=2"
	}
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

    # Decode links to branches and tickets with implementations
    if {[info exists fields(tcl-branch)] && [regexp {^[-\w]+$} $fields(tcl-branch)]} {
	set link [format "/tcl/timeline?r=%s" $fields(tcl-branch)]
    } elseif {[info exists fields(tk-branch)] && [regexp {^[-\w]+$} $fields(tk-branch)]} {
	set link [format "/tk/timeline?r=%s" $fields(tk-branch)]
    } elseif {[info exists fields(tcl-ticket)] && [regexp {^[a-f0-9]+$} $fields(tcl-ticket)]} {
	set link [format "/tcl/tktview/%s" $fields(tcl-ticket)]
    } elseif {[info exists fields(tk-ticket)] && [regexp {^[a-f0-9]+$} $fields(tk-ticket)]} {
	set link [format "/tk/tktview/%s" $fields(tk-ticket)]
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
    puts $index "<td valign='top'$titlecolumnspan>[encodeHTML $fields(title)]</td>"
    if {[info exist link]} {
	puts $index "<td valign='top'><a href='$link'>Link</a></td>"
    } elseif {$titlecolumnspan eq ""} {
	puts $index "<td></td>"
    }
    puts $index "</tr>"

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
fconfigure $json -translation lf -encoding utf-8

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
