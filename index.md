# TIP Index

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

State: 

    <input class="toggler-state"
        data-value="accepted"
        type="checkbox"
        onclick="toggleFacet('state')">Accepted</button>


    <input class="toggler-state"
        data-value="deferred"
        type="checkbox"
        onclick="toggleFacet('state')">Deferred</button>


    <input class="toggler-state"
        data-value="draft"
        type="checkbox"
        onclick="toggleFacet('state')">Draft</button>


    <input class="toggler-state"
        data-value="final"
        type="checkbox"
        onclick="toggleFacet('state')">Final</button>


    <input class="toggler-state"
        data-value="obsoleted"
        type="checkbox"
        onclick="toggleFacet('state')">Obsoleted</button>


    <input class="toggler-state"
        data-value="rejected"
        type="checkbox"
        onclick="toggleFacet('state')">Rejected</button>


    <input class="toggler-state"
        data-value="withdrawn"
        type="checkbox"
        onclick="toggleFacet('state')">Withdrawn</button>

<br>
Type: 

    <input class="toggler-type"
        data-value="informational"
        type="checkbox"
        onclick="toggleFacet('type')">Informational</button>


    <input class="toggler-type"
        data-value="process"
        type="checkbox"
        onclick="toggleFacet('type')">Process</button>


    <input class="toggler-type"
        data-value="project"
        type="checkbox"
        onclick="toggleFacet('type')">Project</button>


    <input class="toggler-type"
        data-value="humor"
        type="checkbox"
        onclick="toggleFacet('type')">Humor</button>

<br>
Version: 

    <input class="toggler-version"
        data-value="80"
        type="checkbox"
        onclick="toggleFacet('version')">8.0</button>


    <input class="toggler-version"
        data-value="84"
        type="checkbox"
        onclick="toggleFacet('version')">8.4</button>


    <input class="toggler-version"
        data-value="85"
        type="checkbox"
        onclick="toggleFacet('version')">8.5</button>


    <input class="toggler-version"
        data-value="86"
        type="checkbox"
        onclick="toggleFacet('version')">8.6</button>


    <input class="toggler-version"
        data-value="87"
        type="checkbox"
        onclick="toggleFacet('version')">8.7</button>


    <input class="toggler-version"
        data-value="90"
        type="checkbox"
        onclick="toggleFacet('version')">9.0</button>


    <input class="toggler-version"
        data-value="92"
        type="checkbox"
        onclick="toggleFacet('version')">9.2</button>

<br>


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

<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/553.md'>553</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/553.md'>Ellipses: the Alternative to Scrolling and Wrapping</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/552.md'>552</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/552.md'>Extended treeview functionality.</a></td>
<td valign='top'><a href='/tk/timeline?r=pspjuth-treeview'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/551.md'>551</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/551.md'>Permit underscore in numerical literals in source code</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/550.md'>550</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/550.md'>Garbage Collection for TclOO</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/549.md'>549</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/549.md'>Make configure --enable-64bit the default</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-549'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/548.md'>548</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/548.md'>Support `wchar_t` conversion functions and deprecate `Tcl_WinUtfToTChar()` and `Tcl_WinTCharToUtf()`</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-548'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/547.md'>547</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/547.md'>New encodings: UTF-16, UCS-2</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-547'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/546.md'>546</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/546.md'>Typedefs to Support Source-Compatible Migration</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/545.md'>545</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/545.md'>image photo SVG options: remove -unit and add target height/width option</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-545-svg-options'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/544.md'>544</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/544.md'>Export TclGetIntForIndex()</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-544'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/543.md'>543</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/543.md'>Eliminate `TCL_INTERP_DESTROYED` flag value</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/542.md'>542</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/542.md'>Support for switchable (Androwish-compatible) Full Unicode support</a></td>
<td valign='top'><a href='/tcl/timeline?r=utf-max'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/541.md'>541</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/541.md'>Add support for &apos;end&apos; index in ttk::combobox current</a></td>
<td valign='top'><a href='/tcl/timeline?r=bug-2858503fff'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/540.md'>540</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/540.md'>Add -signal Channel Configure Option to POSIX Pipes</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-87'>
<td valign='top'><a href='./tip/539.md'>539</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/539.md'>Multiple dict filter patterns</a></td>
<td valign='top'><a href='/tcl/tktview/2370575'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/538.md'>538</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/538.md'>Externalize libtommath</a></td>
<td valign='top'><a href='/tcl/timeline?r=digit-bit-60'>Link</a></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/537.md'>537</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/537.md'>Enable 64-bit indexes in regexp matching</a></td>
<td valign='top'><a href='/tcl/timeline?r=regexp-api-64bit'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/536.md'>536</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/536.md'>Improvements to Mac-specific IPC in Tk</a></td>
<td valign='top'><a href='/tk/timeline?r=mac_services'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/535.md'>535</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/535.md'>Remove trailing zeroes in scale ticks</a></td>
<td valign='top'><a href='/tcl/timeline?r=scale-tick-format'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/534.md'>534</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/534.md'>Faster Hashing of Small Integers</a></td>
<td valign='top'><a href='/tcl/timeline?r=dkf-experimental-fast-number-hash'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/533.md'>533</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/533.md'>Extension of the menu post command</a></td>
<td valign='top'><a href='/tk/timeline?r=bug-70e531918e'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/532.md'>532</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/532.md'>Re-implementation of event loop processing</a></td>
<td valign='top'><a href='/tk/timeline?r=bug6e8afe516d'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/531.md'>531</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/531.md'>Static Tcl Interpreter Creation Function</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-531'>Link</a></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/530.md'>530</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/530.md'>Control over performance impact of TIP 280</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-530'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/529.md'>529</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/529.md'>Add metadata dict property to tk photo image</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-529-image-metadata'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/528.md'>528</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/528.md'>Deprecate Tk_Offset()</a></td>
<td valign='top'><a href='/tk/timeline?r=offsetof'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/527.md'>527</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/527.md'>New measurement facilities in TCL: New command timerate</a></td>
<td valign='top'><a href='/tcl/timeline?r=sebres-8-6-timerate'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/526.md'>526</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/526.md'>Make [expr] Only Accept One Argument</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-526'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/525.md'>525</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/525.md'>Make Tcltest Report Overall Success in a Machine-Readable Way</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/524.md'>524</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/524.md'>Custom Definition Dialects for TclOO</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-524'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/523.md'>523</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/523.md'>New lpop command</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-523'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/522.md'>522</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/522.md'>Test error codes with Tcltest</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-522'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/521.md'>521</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/521.md'>Floating Point Classification Functions</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-521'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/520.md'>520</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/520.md'>Make NaN Quiet</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-520'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/519.md'>519</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/519.md'>Inline export/unexport option to TclOO method definition</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-519'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/518.md'>518</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/518.md'>Virtual Event when Last Child is not Managed any more</a></td>
<td valign='top'><a href='/tk/timeline?r=tip518-event-last-child-unmanaged'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/517.md'>517</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/517.md'>Add -activerelief Configuration Option to the menu widget</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-517'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/516.md'>516</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/516.md'>More OO Slot Operations</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-516'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/515.md'>515</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/515.md'>Level Value Reform</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-515'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/514.md'>514</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/514.md'>Platform differences in handling int/wide</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-514'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/513.md'>513</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/513.md'>Better support for &apos;agendas&apos; as arrays, dictionaries or lists</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tips/doc/trunk/attach/513/agendas.tcl'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/512.md'>512</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/512.md'>No stub for Tcl_SetExitProc()</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-512'>Link</a></td>
</tr>
<tr class='state-accepted type-project version-87'>
<td valign='top'><a href='./tip/511.md'>511</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Accepted</td>
<td valign='top' ><a href='./tip/511.md'>Implement Tcl_AsyncMarkFromSignal()</a></td>
<td valign='top'><a href='https://www.androwish.org/index.html/info/40790af1e8e4ec9f'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/510.md'>510</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/510.md'>Add Rbc and Tkpath widgets to Tk</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-510'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/509.md'>509</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/509.md'>Implement reentrant mutexes on all platforms</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-509'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/508.md'>508</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/508.md'>New subcommand [array default]</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-508'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/507.md'>507</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/507.md'>Include simple SVG support with nanosvg</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-507'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/506.md'>506</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/506.md'>Purge RefCount Macros</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-506'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/505.md'>505</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.9</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/505.md'>Make [lreplace] Accept All Out-of-Range Index Values</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-505'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/504.md'>504</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/504.md'>New subcommand [string insert]</a></td>
<td valign='top'><a href='/tcl/timeline?r=dgp-string-insert'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/503.md'>503</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/503.md'>End Tcl 8.3 Source Compatibility Support</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-503'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/502.md'>502</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/502.md'>Index Value Reform</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-502'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/501.md'>501</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/501.md'>string is dict</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-501'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/500.md'>500</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/500.md'>Private Methods and Variables in TclOO</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-500'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/499.md'>499</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/499.md'>Custom locale search list for msgcat</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip499-msgcat-custom-preferences'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/498.md'>498</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/498.md'>Simplify Tcl_DeleteNamespace</a></td>
<td valign='top'><a href='/tcl/timeline?r=bug-e593adf103-core-8'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/497.md'>497</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/497.md'>Full support for Unicode 11.0 and later (part 2)</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-497'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/496.md'>496</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/496.md'>Display hints in ::entry ::spinbox ::ttk::entry ::ttk::spinbox and ::ttk::combobox</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-496'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/495.md'>495</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/495.md'>Tcl Based Build System for TEA projects</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/494.md'>494</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/494.md'>More use of size_t in Tcl 9</a></td>
<td valign='top'><a href='/tcl/timeline?r=memory-API'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/493.md'>493</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/493.md'>Cease Distribution of http 1.0</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-493'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/492.md'>492</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/492.md'>Introspection for &apos;tk busy&apos;</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-492'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/491.md'>491</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/491.md'>Threading Support: phasing out non-threaded builds</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-491'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/490.md'>490</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/490.md'>msgcat for TclOO</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip490-msgcat-oo-2'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/489.md'>489</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/489.md'>Add image widget command to the Tk canvas</a></td>
<td valign='top'><a href='/tk/timeline?r=canvas_image'>Link</a></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/488.md'>488</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/488.md'>Remove tcl_precision</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-488'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/487.md'>487</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/487.md'>Stop support for Pre-XP Windows</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-487'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/486.md'>486</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/486.md'>Thread 3.0 is for Tcl 9</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/485.md'>485</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/485.md'>Remove Deprecated API</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-485'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/484.md'>484</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/484.md'>Merge &apos;int&apos; and &apos;wideInt&apos; Obj-type to a single &apos;int&apos;</a></td>
<td valign='top'><a href='/tcl/timeline?r=no-wideint'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/483.md'>483</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/483.md'>Improved TIP #59 implementation for Tk</a></td>
<td valign='top'><a href='/tk/timeline?r=tk-stu-pkg'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/482.md'>482</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/482.md'>Record Tk demo directory information</a></td>
<td valign='top'><a href='/tk/timeline?r=tk-stu-pkg'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/481.md'>481</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/481.md'>`Tcl_GetStringFromObj()` with `size_t` length parameter</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-481'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/480.md'>480</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/480.md'>Type and Alias Assertions for Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-480'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/479.md'>479</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/479.md'>Add Named Procedures as a New Command in Tcl (dictargs::proc)</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip479'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/478.md'>478</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/478.md'>Add Expected Class Level Behaviors to oo::class</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-478'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/477.md'>477</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.8</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/477.md'>Modernize the nmake build system</a></td>
<td valign='top'><a href='/tcl/timeline?r=vc-reform'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/476.md'>476</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/476.md'>Scan/Printf format consistency</a></td>
<td valign='top'><a href='/tcl/timeline?r=z_modifier'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-87'>
<td valign='top'><a href='./tip/475.md'>475</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/475.md'>Add [string insert] Command and C API</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/474.md'>474</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/474.md'>Treat the mouse wheel events in a uniform way</a></td>
<td valign='top'><a href='/tk/timeline?r=tip474-uniform-mouse-wheel'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/473.md'>473</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/473.md'>Allow a Defined Target Namespace in oo::copy</a></td>
<td valign='top'><a href='/tcl/timeline?r=oo-copy-ns'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/472.md'>472</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/472.md'>Add Support for 0d Radix Prefix to Integer Literals</a></td>
<td valign='top'><a href='/tcl/timeline?r=bsg-0d-radix-prefix'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/471.md'>471</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/471.md'>Add [info linkedname] Introspection Command</a></td>
<td valign='top'><a href='/tcl/timeline?r=info-linkedname'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/470.md'>470</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/470.md'>Reliable Access to OO Definition Context Object</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-470'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/469.md'>469</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/469.md'>A Callback for Channel-Exception Conditions</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-469'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/468.md'>468</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/468.md'>Support Passing TCP listen Backlog Size Option to TCP Socket Creation</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-468-bis'>Link</a></td>
</tr>
<tr class='state-final type-process'>
<td valign='top'><a href='./tip/467.md'>467</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Final</td>
<td valign='top'  colspan=2><a href='./tip/467.md'>Move TIP Collection to Fossil</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/466.md'>466</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/466.md'>Revised Implementation of the Text Widget</a></td>
<td valign='top'><a href='/tk/timeline?r=revised_text'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/465.md'>465</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/465.md'>Change Rule 8 of the Dodekalogue to Cut Some Corner Cases</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-465'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/464.md'>464</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/464.md'>Support for Multimedia Keys on Windows</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-464'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/463.md'>463</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/463.md'>Command-Driven Substitutions for regsub</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-463'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/462.md'>462</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/462.md'>Add New [::tcl::process] Ensemble for Subprocess Management</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-462'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/461.md'>461</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/461.md'>Separate Numeric and String Comparison Operators</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-461'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/460.md'>460</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/460.md'>An Alternative to Upvar</a></td>
<td valign='top'><a href='/tcl/timeline?r=dah-proc-arg-upvar'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/459.md'>459</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/459.md'>Tcl Package Introspection Improvements</a></td>
<td valign='top'><a href='/tcl/timeline?r=package_files'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/458.md'>458</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/458.md'>Add Support for epoll() and kqueue() in the Notifier</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-458'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/457.md'>457</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/457.md'>Add Support for Named Arguments</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-457'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/456.md'>456</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/456.md'>Extend the C API to Support Passing Options to TCP Server Creation</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-456'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/455.md'>455</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/455.md'>Extensions to [vwait]: Variable Sets and Scripted Access to Tcl_DoOneEvent</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-86'>
<td valign='top'><a href='./tip/454.md'>454</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/454.md'>Automatically Resize Frames After Last Child Removed</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/453.md'>453</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/453.md'>Tcl Based Automation for tcl/pkgs</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tclconfig/timeline?r=practcl'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/452.md'>452</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/452.md'>Add &quot;stubs&quot; Package to or Along Side of TclTest</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-452'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/451.md'>451</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/451.md'>Modify [update] to Give Full Script Access to Tcl_DoOneEvent</a></td>
<td valign='top'><a href='/tcl/timeline?r=updateextended'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/450.md'>450</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/450.md'>Add [binary] subcommand &quot;set&quot; for in-place modification</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-450'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/449.md'>449</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/449.md'>[text] undo/redo to Return Range of Characters</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-449'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/448.md'>448</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/448.md'>Update Tcl_SetNotifier to Reinitialize Event Loop</a></td>
<td valign='top'><a href='http://fossil.etoyoc.com/sandbox/tcllib/artifact/b2b272a285811272'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/447.md'>447</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/447.md'>Execution Time Verbosity Levels in tcltest::configure</a></td>
<td valign='top'><a href='/tcl/timeline?r=gahr-tip-447'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/446.md'>446</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/446.md'>Introspect Undo/Redo Stack Depths</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-446'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/445.md'>445</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/445.md'>Tcl_ObjType Utility Routines</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-445'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/444.md'>444</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/444.md'>Add &quot;weekdays&quot; unit in clock add</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-444'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/443.md'>443</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/443.md'>More Tag Configuration Options for the Text Widget</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-443'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/442.md'>442</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/442.md'>Display text in progressbars</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-442'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/441.md'>441</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/441.md'>Add -justify Configuration Option to the listbox Widget</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-441'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/440.md'>440</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/440.md'>Add engine to tcl_platform Array</a></td>
<td valign='top'><a href='/tcl/timeline?r=tclPlatformEngine'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/439.md'>439</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/439.md'>Semantic Versioning</a></td>
<td valign='top'><a href='/tcl/timeline?r=semver'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/438.md'>438</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/438.md'>Ensure Line Metrics are Up-to-Date</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-438'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/437.md'>437</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5.18</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/437.md'>Tk panedwindow options for proxy window</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-437'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/436.md'>436</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/436.md'>Improve TclOO isa Introspection</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tcloo/info/5fa1374aa026d4c7'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/435.md'>435</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/435.md'>Safe Mutex Disposal API</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-86'>
<td valign='top'><a href='./tip/434.md'>434</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/434.md'>Specify Event Sources for &apos;vwait&apos;</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/433.md'>433</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/433.md'>Add %M binding substitution</a></td>
<td valign='top'><a href='/tk/timeline?r=bindScriptCount'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/432.md'>432</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.3</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/432.md'>Support for New Windows File Dialogs in Vista and Later</a></td>
<td valign='top'><a href='/tk/timeline?r=apn-win-filedialogs'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/431.md'>431</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/431.md'>Add &apos;tempdir&apos; Subcommand to &apos;file&apos;</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-431'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/430.md'>430</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/430.md'>Add basic ZIP archive support to Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=core_zip_vfs'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/429.md'>429</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.2</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/429.md'>A &apos;string&apos; Subcommand for Concatenation</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-429'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/428.md'>428</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/428.md'>Produce Error Dictionary from &apos;fconfigure -error&apos;</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-428'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/427.md'>427</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/427.md'>Introspection of Asynchronous Socket Connection</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-427'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/426.md'>426</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/426.md'>Determining the &quot;Type&quot; of Commands</a></td>
<td valign='top'><a href='/tcl/timeline?r=dkf-command-type'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/425.md'>425</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/425.md'>Correct use of UTF-8 in Panic Callback (Windows only)</a></td>
<td valign='top'><a href='/tcl/timeline?r=win-console-panic'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/424.md'>424</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/424.md'>Improving [exec]</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-improve-exec'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/423.md'>423</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/423.md'>Formatting Timestamps with Milliseconds</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/422.md'>422</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/422.md'>Don&apos;t Use stdarg.h/va_list in Public API</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-422'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/421.md'>421</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/421.md'>A Command for Iterating Over Arrays</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-421'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/420.md'>420</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/420.md'>&apos;vexpr&apos;, a Vector Expression Command</a></td>
<td valign='top'><a href='http://www.etoyoc.com/tclmatrix3d'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/419.md'>419</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/419.md'>A New Command for Binding to Tk Events</a></td>
<td valign='top'><a href='http://wiki.tcl.tk/tkevent'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/418.md'>418</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/418.md'>Add [binary] Subcommands for In-Place Modification</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/417.md'>417</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/417.md'>Use Explicit Option Names for &quot;file tempfile&quot;</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/416.md'>416</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/416.md'>New Options for &apos;load&apos;: -global and -lazy</a></td>
<td valign='top'><a href='/tcl/timeline?r=frq-3579001'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/415.md'>415</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/415.md'>Enable Easy Creation of Circular Arc Segments</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-415'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/414.md'>414</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/414.md'>Add (back) Tcl_InitSubsystems as Public API</a></td>
<td valign='top'><a href='/tcl/timeline?r=initsubsystems'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/413.md'>413</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/413.md'>Unicode Support for &apos;string is space&apos; and &apos;string trim&apos;</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-318-update'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/412.md'>412</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/412.md'>Dynamic Locale Changing for msgcat with On-Demand File Load</a></td>
<td valign='top'><a href='/tcl/timeline?r=msgcat_dyn_locale'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/411.md'>411</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/411.md'>Improved Channel Introspection via &quot;chan info&quot;</a></td>
<td valign='top'><a href='http://sqlitestudio.pl/tcl/patches/tip-411-chan_info.patch'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/410.md'>410</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/410.md'>Three Features of scan Adapted for binary scan/format</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/409.md'>409</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/409.md'>UDP in Tcl</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/408.md'>408</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/408.md'>Allow Any Command for expr Functions</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/407.md'>407</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/407.md'>The String Representation of Tcl Lists: the Gory Details</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/406.md'>406</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/406.md'>&quot;C&quot; is for Cookie</a></td>
<td valign='top'><a href='/tcl/timeline?r=dkf-http-cookies'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/405.md'>405</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/405.md'>Add Collecting Loops, the &apos;lmap&apos; and &apos;dict map&apos; Commands</a></td>
<td valign='top'><a href='/tcl/tktview/3163961'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/404.md'>404</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/404.md'>Let Message Catalogs get the Locale from their File Name</a></td>
<td valign='top'><a href='/tcl/tktview/3544988'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/403.md'>403</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/403.md'>Web Colors for Tk</a></td>
<td valign='top'><a href='/tk/timeline?r=jn-web-colors'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/402.md'>402</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/402.md'>General Platform UNC Support</a></td>
<td valign='top'><a href='/tcl/timeline?r=jn-unc-vfs'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/401.md'>401</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/401.md'>Comment Words with Leading {#}</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-401'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/400.md'>400</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/400.md'>Setting the Compression Dictionary and Other &apos;zlib&apos; Updates</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-400-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/399.md'>399</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/399.md'>Dynamic Locale Changing for msgcat</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/398.md'>398</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/398.md'>Quickly Exit with Non-Blocking Blocked Channels</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-398-impl'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/397.md'>397</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/397.md'>Extensible Object Copying</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tcloo/timeline?r=development-rfe3485060'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/396.md'>396</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/396.md'>Symmetric Coroutines, Multiple Args, and yieldto</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/395.md'>395</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/395.md'>New &apos;string is entier&apos; Command</a></td>
<td valign='top'><a href='http://sites.google.com/site/josdecoster/Home/tip_string_is_entier.diff'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/394.md'>394</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/394.md'>Platform-Independent Handling of Contemporary Mice</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/393.md'>393</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/393.md'>Add -command Option to lsearch</a></td>
<td valign='top'><a href='http://sqlitestudio.pl/tcl/patches/tip-393-lsearch-command.patch'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/392.md'>392</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/392.md'>Allow Bignums to be Disabled at Runtime on a Per-Interp Basis</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-87'>
<td valign='top'><a href='./tip/391.md'>391</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/391.md'>Support for UDP Sockets in Tcl</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/390.md'>390</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/390.md'>A Logging API for Tcl</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/389.md'>389</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/389.md'>Full support for Unicode 10.0 and later (part 1)</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-389'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/388.md'>388</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/388.md'>Extending Unicode literals past the BMP</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-388-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/387.md'>387</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/387.md'>Unified Yield Command Syntax</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/386.md'>386</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/386.md'>Relocation of Tcl/Tk Source Control Repositories</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/385.md'>385</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/385.md'>Functional Traces On Variables</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/384.md'>384</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/384.md'>Add File Alteration Monitoring to the Tcl Core</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/383.md'>383</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/383.md'>Injecting Code into Suspended Coroutines</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-383'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/382.md'>382</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5.11</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/382.md'>Let tk_getSaveFile ignore file overwrites</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-382'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/381.md'>381</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/381.md'>Call Chain Introspection and Control</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tcloo/timeline?r=development-next2'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/380.md'>380</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/380.md'>TclOO Slots for Flexible Declarations</a></td>
<td valign='top'><a href='/tcl/tktview/3084339'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/379.md'>379</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/379.md'>Add a Command for Delivering Events Without Tk</a></td>
<td valign='top'><a href='http://www.wjduquette.com/notifier/hook-0.1.zip'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/378.md'>378</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/378.md'>Fixing the Performance of TIP 280</a></td>
<td valign='top'><a href='/tcl/tktview/3081184'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-86'>
<td valign='top'><a href='./tip/377.md'>377</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/377.md'>Portably Determining the Number of Processors in the System</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/376.md'>376</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/376.md'>Bundle sqlite3 and tdbc::sqlite3 Packages</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tdbc/'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/375.md'>375</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/375.md'>Symmetric Coroutines and Yieldto</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/374.md'>374</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/374.md'>Stackless Vwait</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/373.md'>373</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/373.md'>Improved Yielding Support for Coroutines</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/372.md'>372</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/372.md'>Multi-argument Yield for Coroutines</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/371.md'>371</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/371.md'>Improvements for the dict command</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/370.md'>370</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/370.md'>Extend Tk&apos;s selection with a -time option</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/369.md'>369</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/369.md'>Widget cargo command</a></td>
<td valign='top'><a href='/tk/tktview/3023578'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-87'>
<td valign='top'><a href='./tip/368.md'>368</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/368.md'>Listbox Justification Option</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/367.md'>367</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/367.md'>A Command to Remove Elements from a List</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-367'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/366.md'>366</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/366.md'>Variable Sized Indicators for Menubuttons</a></td>
<td valign='top'><a href='/tk/tktview/2996760'>Link</a></td>
</tr>
<tr class='state-draft type-humor version-86'>
<td valign='top'><a href='./tip/365.md'>365</a></td>
<td valign='top'>humor</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/365.md'>Add Python Compatibility Mode</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/364.md'>364</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/364.md'>Threading Support: Configuration and Package</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/363.md'>363</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/363.md'>Vector Math in the Tcl Core</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/362.md'>362</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/362.md'>Simple 32 and 64 bit Registry Support</a></td>
<td valign='top'><a href='/tcl/tktview/2960976'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/361.md'>361</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/361.md'>Releasing Channel Buffers</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/360.md'>360</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/360.md'>Modernize X11 Menus</a></td>
<td valign='top'><a href='/tk/tktview/2920409'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/359.md'>359</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/359.md'>Extended Window Manager Hint Support</a></td>
<td valign='top'><a href='/tk/tktview/2918731'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/358.md'>358</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/358.md'>Suppress Empty List Element Generation from the Split Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/357.md'>357</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/357.md'>Export TclLoadFile</a></td>
<td valign='top'><a href='/tcl/tktview/2891616'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/356.md'>356</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/356.md'>NR-enabled Substitutions for Extensions</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/355.md'>355</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/355.md'>Stop Fast Recycling of Channel Names on Unix</a></td>
<td valign='top'><a href='/tcl/tktview/2826430'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/354.md'>354</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/354.md'>Minor Production-Driven TclOO Revisions</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/353.md'>353</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/353.md'>NR-enabled Expressions for Extensions</a></td>
<td valign='top'><a href='/tcl/tktview/2823282'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/352.md'>352</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/352.md'>Tcl Style Guide</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/351.md'>351</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/351.md'>Add Striding Support to lsearch</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-351'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/350.md'>350</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/350.md'>Tcl Database Connectivity - Corrigenda</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/349.md'>349</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/349.md'>New &quot;-cargo&quot; option for every Tk widget</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/348.md'>348</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/348.md'>Substituted &apos;errorstack&apos; / &apos;traceback&apos;</a></td>
<td valign='top'><a href='/tcl/tktview/2868499'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-87'>
<td valign='top'><a href='./tip/347.md'>347</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/347.md'>Align &apos;string is ...&apos; to Type-Conversion Functions in &apos;expr&apos;</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/346.md'>346</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/346.md'>Error on Failed String Encodings</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/345.md'>345</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/345.md'>Kill the &apos;identity&apos; Encoding</a></td>
<td valign='top'><a href='/tcl/tktview/2564363'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/344.md'>344</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/344.md'>Bring TCP_NODELAY and SO_KEEPALIVE to socket options</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/343.md'>343</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/343.md'>A Binary Specifier for [format/scan]</a></td>
<td valign='top'><a href='/tcl/tktview/2368084'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/342.md'>342</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/342.md'>Dict Get With Default</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-342'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/341.md'>341</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/341.md'>Multiple &apos;dict filter&apos; Patterns</a></td>
<td valign='top'><a href='/tcl/tktview/2370575'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-87'>
<td valign='top'><a href='./tip/340.md'>340</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/340.md'>Const Qualification of Tcl_SetResult&apos;s Argument</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/339.md'>339</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/339.md'>Case-Insensitive Package Names</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/338.md'>338</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/338.md'>Embedder Access to Startup Scripts of *_Main()</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/337.md'>337</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/337.md'>Make TclBackgroundException() Public</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/336.md'>336</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/336.md'>Supported Access To interp-&gt;errorline</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-330-336'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/335.md'>335</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/335.md'>An API for Detecting Active Interpreters</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-86'>
<td valign='top'><a href='./tip/334.md'>334</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/334.md'>Make &apos;lrepeat&apos; Accept Zero as a Count</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/333.md'>333</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/333.md'>New Variable and Namespace Resolving Interface</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/332.md'>332</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/332.md'>Half-Close for Bidirectional Channels</a></td>
<td valign='top'><a href='/tcl/tktview/219159'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/331.md'>331</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/331.md'>Allow [lset] to Extend Lists</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/330.md'>330</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/330.md'>Eliminate interp-&gt;result from the Public Headers</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-330-336'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/329.md'>329</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/329.md'>Try/Catch/Finally syntax</a></td>
<td valign='top'><a href='http://www.crypt.co.za/pub/try-1.tcl'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/328.md'>328</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/328.md'>Coroutines</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/327.md'>327</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/327.md'>Proper Tailcalls</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/326.md'>326</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/326.md'>Add -stride Option to lsort</a></td>
<td valign='top'><a href='/tcl/tktview/2082681'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/325.md'>325</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/325.md'>System Tray Access</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/324.md'>324</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/324.md'>A Standard Dialog For Font Selection</a></td>
<td valign='top'><a href='/tk/tktview/1477426'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/323.md'>323</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/323.md'>Do Nothing Gracefully</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/322.md'>322</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/322.md'>Publish the NRE API</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/321.md'>321</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/321.md'>Add a [tk busy] Command</a></td>
<td valign='top'><a href='/tk/tktview/1997907'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/320.md'>320</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/320.md'>Improved Variable Handling in the Core Object System</a></td>
<td valign='top'><a href='/tcl/tktview/2005460'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/319.md'>319</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/319.md'>Implement Backwards Compatibility for ttk Themed Widgets in tk Widgets</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/318.md'>318</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/318.md'>Extend Default Whitespace in &apos;string trim&apos; Beyond ASCII</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-318-update'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/317.md'>317</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/317.md'>Extend binary Ensemble with Binary Encodings</a></td>
<td valign='top'><a href='/tcl/tktview/1956530'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/316.md'>316</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/316.md'>Portable Access Functions for Stat Buffers</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/315.md'>315</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/315.md'>Add pathSeparator to tcl_platform Array</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/314.md'>314</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/314.md'>Ensembles with Parameters</a></td>
<td valign='top'><a href='/tcl/tktview/1901783'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/313.md'>313</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/313.md'>Inexact Searching in Sorted List</a></td>
<td valign='top'><a href='/tcl/tktview/1894241'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/312.md'>312</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/312.md'>Add More Link Types</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-312-new'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/311.md'>311</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/311.md'>Tcl/Tk 8.6 Release Calendar</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/310.md'>310</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/310.md'>Add a New Pseudo-Random Number Generator</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/309.md'>309</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/309.md'>Expose the Expression Parsing</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-informational'>
<td valign='top'><a href='./tip/308.md'>308</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Obsoleted</td>
<td valign='top'  colspan=2><a href='./tip/308.md'>Tcl Database Connectivity (TDBC)</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/307.md'>307</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/307.md'>Make TclTransferResult() Public</a></td>
<td valign='top'><a href='/tcl/tktview/1723738'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/306.md'>306</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/306.md'>Auto-Naming Widgets</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/305.md'>305</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/305.md'>ANSI Escape Sequence Support for Windows&apos;s Console Channel Driver</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/304.md'>304</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/304.md'>A Standalone [chan pipe] Primitive for Advanced Child IPC</a></td>
<td valign='top'><a href='/tcl/tktview/1978495'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/303.md'>303</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/303.md'>Enhance &apos;llength&apos; Command to Support Nested Lists</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/302.md'>302</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/302.md'>Fix &quot;after&quot;&apos;s Sensitivity To Adjustments Of System Clock</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/301.md'>301</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/301.md'>Split Bidirectional Channels For Half-Close</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/300.md'>300</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/300.md'>Examine Glyph Substitution in the &apos;font actual&apos; Command</a></td>
<td valign='top'><a href='/tk/tktview/1602955'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/299.md'>299</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/299.md'>Add isqrt() Math Function</a></td>
<td valign='top'><a href='/tk/tktview/1602534'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/298.md'>298</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/298.md'>Revise Shared Value Rules for Tcl_GetBignumAndClearObj</a></td>
<td valign='top'><a href='/tcl/tktview/1601243'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/297.md'>297</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/297.md'>Integer Type Introspection and Conversion</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/296.md'>296</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/296.md'>Enhanced Syntax for Pair-Wise Indices</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/295.md'>295</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/295.md'>Enhance Arguments to lrange</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/294.md'>294</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/294.md'>The &quot;entier&quot; Function: It&apos;s Spelt &quot;entire&quot;</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/293.md'>293</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/293.md'>Argument Expansion with Leading {*}</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-87'>
<td valign='top'><a href='./tip/292.md'>292</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/292.md'>Allow Unquoted Strings in Expressions</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/291.md'>291</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/291.md'>Add the &apos;platform&apos; Package to Tcl</a></td>
<td valign='top'><a href='/tcl/tktview/1600701'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/290.md'>290</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/290.md'>Registration of Custom Error Handler Scripts</a></td>
<td valign='top'><a href='/tcl/tktview/1587317'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/289.md'>289</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/289.md'>Revision of [lrepeat] Argument Order</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/288.md'>288</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/288.md'>Allow &quot;args&quot; Anywhere in Procedure Formal Arguments</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/287.md'>287</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/287.md'>Add a Commands for Determining Size of Buffered Data</a></td>
<td valign='top'><a href='/tcl/tktview/1586860'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/286.md'>286</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/286.md'>Add &apos;xposition&apos; Command to Menu Widgets</a></td>
<td valign='top'><a href='/tk/tktview/1152376'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/285.md'>285</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/285.md'>Script Cancellation with [interp cancel] and Tcl_CancelEval</a></td>
<td valign='top'><a href='/tcl/tktview/1499394'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/284.md'>284</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/284.md'>New &apos;invoke&apos; and &apos;namespace invoke&apos; Commands</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-284'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/283.md'>283</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/283.md'>Modify Ensemble Command Resolution Behaviour</a></td>
<td valign='top'><a href='/tcl/tktview/1577282'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/282.md'>282</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/282.md'>Enhanced Expression Syntax</a></td>
<td valign='top'><a href='/tcl/tktview/1969722'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/281.md'>281</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/281.md'>Improvements in System Error Handling</a></td>
<td valign='top'><a href='http://iocpsock.cvs.sourceforge.net/iocpsock/iocpsock/tclWinError.c?revision=HEAD&view=markup'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/280.md'>280</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/280.md'>Add Full Stack Trace Capability With Location Introspection</a></td>
<td valign='top'><a href='/tcl/tktview/1571568'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/279.md'>279</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/279.md'>Adding an Extensible Object System to the Core</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/278.md'>278</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/278.md'>Fix Variable Name Resolution Quirks</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-278'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/277.md'>277</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/277.md'>Create Namespaces as Needed</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/276.md'>276</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/276.md'>Specify and Unify Variable Linking Commands</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/275.md'>275</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/275.md'>Support Unsigned Values in binary Command</a></td>
<td valign='top'><a href='/tcl/tktview/1565751'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/274.md'>274</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/274.md'>Right-Associativity for the Exponentiation Operator</a></td>
<td valign='top'><a href='/tcl/tktview/1556802'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/273.md'>273</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/273.md'>Add Tcl_Expr... Support to Tcl_Get... Functions</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/272.md'>272</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/272.md'>String and List Reversal Operations</a></td>
<td valign='top'><a href='/tcl/tktview/1545151'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/271.md'>271</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/271.md'>Windows-Style Open and Save File Dialog on Unix</a></td>
<td valign='top'><a href='/tk/tktview/1520742'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/270.md'>270</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/270.md'>Utility C Routines for String Formatting</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/269.md'>269</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/269.md'>Add &apos;string is list&apos; to the &apos;string is&apos; Subcommand</a></td>
<td valign='top'><a href='/tcl/tktview/1491459'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/268.md'>268</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/268.md'>Enhance &apos;package&apos; Version Handling</a></td>
<td valign='top'><a href='/tcl/tktview/1520767'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/267.md'>267</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/267.md'>Allow &apos;exec&apos; to Ignore Stderr</a></td>
<td valign='top'><a href='/tcl/tktview/1476191'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/266.md'>266</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/266.md'>Numbers are Commands</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/265.md'>265</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/265.md'>A Convenient C-side Command Option Parser for Tcl</a></td>
<td valign='top'><a href='/tcl/tktview/1446696'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/264.md'>264</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/264.md'>Add Function to Retrieve the Interpreter of a Window</a></td>
<td></td>
</tr>
<tr class='state-draft type-humor version-92'>
<td valign='top'><a href='./tip/263.md'>263</a></td>
<td valign='top'>humor</td>
<td valign='top'>9.2</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/263.md'>Quantum Tcl</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/262.md'>262</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/262.md'>Background Images for Frames</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-262'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/261.md'>261</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/261.md'>Return Imported Commands from [namespace import]</a></td>
<td valign='top'><a href='/tcl/tktview/1437008'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/260.md'>260</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/260.md'>Add Underline Option to Canvas Text Items</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/259.md'>259</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/259.md'>Making &apos;exec&apos; Optionally Binary Safe</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/258.md'>258</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/258.md'>Enhanced Interface for Encodings</a></td>
<td valign='top'><a href='/tcl/tktview/1413934'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/257.md'>257</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/257.md'>Object Orientation for Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-257-implementation-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/256.md'>256</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/256.md'>Implement Tabular and Wordprocessor Style Tabbing</a></td>
<td valign='top'><a href='/tk/tktview/1247835'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/255.md'>255</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/255.md'>Add &apos;min&apos; and &apos;max&apos; [expr] Functions</a></td>
<td valign='top'><a href='/tcl/tktview/1309020'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/254.md'>254</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/254.md'>New Types for Tcl_LinkVar</a></td>
<td valign='top'><a href='/tcl/tktview/1242844'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/253.md'>253</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/253.md'>Consolidate Package-Related Commands</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/252.md'>252</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/252.md'>Add New &apos;string&apos; Command Options</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/251.md'>251</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/251.md'>Enhance the &apos;list&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/250.md'>250</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/250.md'>Efficient Access to Namespace Variables</a></td>
<td valign='top'><a href='/tcl/tktview/1275435'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/249.md'>249</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/249.md'>Unification of Tcl&apos;s Parsing of Numbers</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/248.md'>248</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/248.md'>Integrate Tile into Tk as Ttk</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/247.md'>247</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/247.md'>Tcl/Tk Engineering Manual</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/246.md'>246</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/246.md'>Unify Pattern Matching</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/245.md'>245</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/245.md'>Discover User Inactivity Time</a></td>
<td valign='top'><a href='/tk/tktview/1185731'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/244.md'>244</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/244.md'>PNG Photo Image Support for Tk</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/243.md'>243</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/243.md'>Supply Find Dialog for the Text Widget</a></td>
<td valign='top'><a href='/tk/tktview/1167420'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/242.md'>242</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/242.md'>Preselect Filter on tk_get*File Dialogs</a></td>
<td valign='top'><a href='/tk/tktview/1156388'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/241.md'>241</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/241.md'>Case-Insensitive Switches and List Searching and Sorting</a></td>
<td valign='top'><a href='/tcl/tktview/1152746'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/240.md'>240</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/240.md'>An Ensemble Command to Manage Processes</a></td>
<td valign='top'><a href='/tcl/tktview/1315115'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/239.md'>239</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/239.md'>Enhance the &apos;load&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/238.md'>238</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/238.md'>Fire Event when Widget Created</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/237.md'>237</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/237.md'>Arbitrary-Precision Integers for Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=kennykb-numerics-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/236.md'>236</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/236.md'>Absolute Positioning of Canvas Items</a></td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/canvmoveto.patch.gz'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/235.md'>235</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/235.md'>Exposing a C API for Ensembles</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/234.md'>234</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/234.md'>Add Support For Zlib Compression</a></td>
<td valign='top'><a href='http://svn.scheffers.net/zlib'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/233.md'>233</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/233.md'>Virtualization of Tcl&apos;s Sense of Time</a></td>
<td valign='top'><a href='/tcl/tktview/1073863'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/232.md'>232</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/232.md'>Creating New Math Functions for the &apos;expr&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/231.md'>231</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/231.md'>Support for [wm attributes] on X11</a></td>
<td valign='top'><a href='/tk/tktview/1062022'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/230.md'>230</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/230.md'>Tcl Channel Transformation Reflection API</a></td>
<td valign='top'><a href='/tcl/tktview/1163274'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/229.md'>229</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/229.md'>Scripted Control of Name Resolution in Namespaces</a></td>
<td valign='top'><a href='/tcl/tktview/1159942'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/228.md'>228</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/228.md'>Tcl Filesystem Reflection API</a></td>
<td valign='top'><a href='http://sourceforge.net/projects/tclvfs/'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/227.md'>227</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/227.md'>Interface to Get and Set the Return Options of an Interpreter</a></td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/226.md'>226</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/226.md'>Interface to Save and Restore Interpreter State</a></td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/225.md'>225</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/225.md'>Arithmetic Series with Optimized Space Complexity</a></td>
<td valign='top'><a href='/tcl/tktview/1052584'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-87'>
<td valign='top'><a href='./tip/224.md'>224</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/224.md'>Add New [array] Subcommand &apos;value&apos;</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-224'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/223.md'>223</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/223.md'>Full-Screen Toplevel Support for Tk</a></td>
<td valign='top'><a href='/tk/tktview/1032982'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/222.md'>222</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/222.md'>Add [wm attributes -alpha] Attribute on Windows</a></td>
<td valign='top'><a href='/tk/tktview/892194'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/221.md'>221</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/221.md'>Allow Background Error Handlers to Accept Return Options</a></td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/220.md'>220</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/220.md'>Escalate Privileges in VFS Close Callback</a></td>
<td valign='top'><a href='/tcl/tktview/1057093'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/219.md'>219</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/219.md'>Tcl Channel Reflection API</a></td>
<td valign='top'><a href='/tcl/tktview/1025294'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/218.md'>218</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/218.md'>Tcl Channel Driver Thread State Actions</a></td>
<td valign='top'><a href='/tcl/tktview/875701'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/217.md'>217</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/217.md'>Getting Sorted Indices out of Lsort</a></td>
<td valign='top'><a href='/tcl/tktview/1017532'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/216.md'>216</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/216.md'>Handling Command-Line Options in Tclsh and Wish</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/215.md'>215</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/215.md'>Make [incr] Auto-Initialize Undefined Variables</a></td>
<td valign='top'><a href='/tcl/tktview/1413115'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-87'>
<td valign='top'><a href='./tip/214.md'>214</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/214.md'>Add New Object Introspection Command</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/213.md'>213</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/213.md'>A Standard Dialog for Font Selection</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/212.md'>212</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/212.md'>Temporarily Opening out a Dictionary</a></td>
<td valign='top'><a href='/tcl/tktview/1008768'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/211.md'>211</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/211.md'>Add Full Stack Trace Capability</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/210.md'>210</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/210.md'>Add &apos;tempfile&apos; Subcommand to &apos;file&apos;</a></td>
<td valign='top'><a href='/tcl/tktview/999162'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/209.md'>209</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/209.md'>Add [clock milliseconds], and [clock microseconds]</a></td>
<td valign='top'><a href='/tcl/tktview/991742'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/208.md'>208</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/208.md'>Add a &apos;chan&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/207.md'>207</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/207.md'>Add a -namespace Option to [interp invokehidden]</a></td>
<td valign='top'><a href='/tcl/tktview/981841'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/206.md'>206</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/206.md'>Add an [ftruncate] Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/205.md'>205</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/205.md'>Use pkgconfig Database to Register Xft Support</a></td>
<td valign='top'><a href='/tk/tktview/976520'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/204.md'>204</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/204.md'>Virtual Events for Keyboard Traversal</a></td>
<td valign='top'><a href='/tk/tktview/976928'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/203.md'>203</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/203.md'>Create tclConfig.sh-Equivalent in Tcl</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/202.md'>202</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/202.md'>Add 2&gt;@1 Special Case to [open] and [exec]</a></td>
<td valign='top'><a href='/tcl/tktview/957132'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/201.md'>201</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/201.md'>Add &apos;in&apos; Operator to [expr]</a></td>
<td valign='top'><a href='/tcl/tktview/1031507'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/200.md'>200</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/200.md'>Listing the Values in an Array</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/199.md'>199</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/199.md'>Specification of Alternatives to .wishrc/.tclshrc</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-87'>
<td valign='top'><a href='./tip/198.md'>198</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/198.md'>Image Command XPM Extension</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/197.md'>197</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/197.md'>Unfocussed Text Widget Cursor Control</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/196.md'>196</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/196.md'>Tcl Commands as Values</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/195.md'>195</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/195.md'>A Unique Prefix Handling Command</a></td>
<td valign='top'><a href='/tcl/tktview/1040206'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/194.md'>194</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/194.md'>Procedures as Values via &apos;&apos;&apos;apply&apos;&apos;&apos;</a></td>
<td valign='top'><a href='/tcl/tktview/944803'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/193.md'>193</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/193.md'>Simple Syntax Help System</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/192.md'>192</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/192.md'>Lazy Lists</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/191.md'>191</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/191.md'>Managing Tcl Packages and Modules in a Multi-Version Environment</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/190.md'>190</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/190.md'>Implementation Choices for Tcl Modules</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/189.md'>189</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/189.md'>Tcl Modules</a></td>
<td valign='top'><a href='/tcl/tktview/942881'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/188.md'>188</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/188.md'>Add &apos;string is wideinteger&apos; to the &apos;string is&apos; Subcommand</a></td>
<td valign='top'><a href='/tcl/tktview/940915'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/187.md'>187</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/187.md'>Procedures as Values</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/186.md'>186</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/186.md'>Expose the Type and Modified-State of Widget Options</a></td>
<td valign='top'><a href='http://pdqi.com/configure.diff.gz'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/185.md'>185</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/185.md'>Null Handling</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/184.md'>184</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/184.md'>Avoid Creating Unusable Variables</a></td>
<td valign='top'><a href='/tcl/tktview/600812'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/183.md'>183</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/183.md'>Add a Binary Flag to [open]</a></td>
<td valign='top'><a href='/tcl/tktview/577093'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/182.md'>182</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/182.md'>Add [expr bool] Math Function</a></td>
<td valign='top'><a href='/tcl/tktview/1165062'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/181.md'>181</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/181.md'>Add a [namespace unknown] Command</a></td>
<td valign='top'><a href='/tcl/tktview/958222'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/180.md'>180</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/180.md'>Add a Megawidget Support Core Package</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/179.md'>179</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/179.md'>Add -hide Option to panedwindow Widget</a></td>
<td valign='top'><a href='ftp://ftp.model.com/pub/tcl/pw_hide_TIP.tgz'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/178.md'>178</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/178.md'>[info pid] and [info tid] Subcommands</a></td>
<td valign='top'><a href='/tcl/tktview/920731ffffffffffffff'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/177.md'>177</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/177.md'>Add -stretch Option to panedwindow Widget</a></td>
<td valign='top'><a href='ftp://ftp.model.com/pub/tcl/pw_stretch_TIP.tgz'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/176.md'>176</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/176.md'>Add String Index Values</a></td>
<td valign='top'><a href='/tcl/tktview/1165695'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-90'>
<td valign='top'><a href='./tip/175.md'>175</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/175.md'>Add an -async Option to [open]</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/174.md'>174</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/174.md'>Math Operators as Commands</a></td>
<td valign='top'><a href='/tcl/tktview/1578137'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/173.md'>173</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/173.md'>Internationalisation and Refactoring of the &apos;clock&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/172.md'>172</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/172.md'>Improve UNIX Tk Look and Feel</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/171.md'>171</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/171.md'>Change Default &lt;MouseWheel&gt; Bindings Behavior</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/170.md'>170</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/170.md'>Better Support for Nested Lists</a></td>
<td valign='top'><a href='http://nac.sf.net/'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/169.md'>169</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/169.md'>Add Peer Text Widgets</a></td>
<td valign='top'><a href='/tk/tktview/994629'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/168.md'>168</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/168.md'>Cubic Bezier Curves on the Canvas</a></td>
<td valign='top'><a href='/tk/tktview/886240'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/167.md'>167</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/167.md'>Add a New Option for Context Help for Windows</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-167'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/166.md'>166</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/166.md'>Reading and Writing the Photo Image Alpha Channel</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-166'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/165.md'>165</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/165.md'>A User-Data Field for Virtual Events</a></td>
<td valign='top'><a href='/tk/tktview/1008975'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/164.md'>164</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/164.md'>Add Rotate Subcommand to the Canvas Widget</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-164'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/163.md'>163</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/163.md'>A [dict merge] Subcommand</a></td>
<td valign='top'><a href='/tcl/tktview/745851'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/162.md'>162</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/162.md'>IPv6 Sockets for Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=rmax-ipv6-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/161.md'>161</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/161.md'>Change Default for Menu&apos;s -tearoff Option to False</a></td>
<td valign='top'><a href='/tk/timeline?r=tip-161'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/160.md'>160</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/160.md'>Improvements to Terminal and Serial Channel Handling</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-160'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/159.md'>159</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/159.md'>Extending Tk &apos;wm&apos; Command to Support Coloured Icons</a></td>
<td valign='top'><a href='/tk/tktview/815751'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/158.md'>158</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/158.md'>Distinguish the two &apos;Enter&apos; keys on Windows</a></td>
<td valign='top'><a href='/tk/tktview/797404'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/157.md'>157</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/157.md'>Argument Expansion with Leading {expand}</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/156.md'>156</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/156.md'>Language-Neutral Root Locale for Msgcat</a></td>
<td valign='top'><a href='/tcl/tktview/809825'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/155.md'>155</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/155.md'>Fix Some of the Text Widget&apos;s Limitations</a></td>
<td valign='top'><a href='/tk/tktview/791292'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/154.md'>154</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/154.md'>Add Named Colors to Tk</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/153.md'>153</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/153.md'>Enhancing the [winfo toplevel] Command</a></td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/computer/winfotop.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/152.md'>152</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/152.md'>New -detail Option for tk_messageBox</a></td>
<td valign='top'><a href='http://hem.fyristorg.com/matben/download/MovableAlerts.dmg'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/151.md'>151</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/151.md'>Remove -e: Command Line Option from tclsh and wish</a></td>
<td></td>
</tr>
<tr class='state-deferred type-project version-85'>
<td valign='top'><a href='./tip/150.md'>150</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top' ><a href='./tip/150.md'>Implement the Tk send Command for Windows</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/149.md'>149</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/149.md'>Allow &quot;enabled&quot; as Synonym for &quot;normal&quot; in -state Option</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/148.md'>148</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/148.md'>Correct [list]-Quoting of the &apos;#&apos; Character</a></td>
<td valign='top'><a href='/tcl/tktview/489537'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/147.md'>147</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/147.md'>Make Grid&apos;s Column/Row Configure Easier</a></td>
<td valign='top'><a href='/tk/tktview/659218'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/146.md'>146</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/146.md'>Add Overall Anchoring to the Grid Geometry Manager</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/145.md'>145</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/145.md'>Enhanced Tk Font Handling</a></td>
<td valign='top'><a href='/tk/tktview/780617'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/144.md'>144</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/144.md'>Argument Expansion Syntax</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/143.md'>143</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/143.md'>An Interpreter Resource Limiting Framework</a></td>
<td valign='top'><a href='/tcl/tktview/926771'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/142.md'>142</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/142.md'>Search Path Variable to Lookup Command Names in Namespaces</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/141.md'>141</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/141.md'>Multiple Initial-Files in [tk_getOpenFile]</a></td>
<td valign='top'><a href='/tk/tktview/657656'>Link</a></td>
</tr>
<tr class='state-deferred type-project version-85'>
<td valign='top'><a href='./tip/140.md'>140</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top' ><a href='./tip/140.md'>Tracing Namespace Modifications</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/139.md'>139</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/139.md'>Publish Part of Tcl&apos;s Namespace API</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/138.md'>138</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/138.md'>New TCL_HASH_KEY_SYSTEM_HASH option for Tcl hash tables</a></td>
<td valign='top'><a href='/tcl/tktview/731356'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/137.md'>137</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/137.md'>Specifying Script Encodings for [source] and tclsh</a></td>
<td valign='top'><a href='/tcl/tktview/742683'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/136.md'>136</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/136.md'>Large List Initialisation</a></td>
<td valign='top'><a href='http://homepage.ntlworld.com/whiteowl/tcl/tcl843-lrepeat.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/135.md'>135</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/135.md'>Change &apos;dde servername -exact&apos; Option to -force</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/134.md'>134</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/134.md'>Subsystem Per-Thread Data Interfaces</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/133.md'>133</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/133.md'>Extending [expr] Operators</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/132.md'>132</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/132.md'>Revised Floating-Point Conversions in Tcl</a></td>
<td valign='top'><a href='/tcl/timeline?r=kennykb-numerics-branch'>Link</a></td>
</tr>
<tr class='state-draft type-humor version-85'>
<td valign='top'><a href='./tip/131.md'>131</a></td>
<td valign='top'>humor</td>
<td valign='top'>8.5</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/131.md'>Read My Mind and Do What I Mean</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/130.md'>130</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/130.md'>Unique DDE server names.</a></td>
<td valign='top'><a href='/tcl/tktview/690354'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/129.md'>129</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/129.md'>New Format Codes for the [binary] Command</a></td>
<td valign='top'><a href='/tcl/tktview/858211'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/128.md'>128</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/128.md'>Ability to Install a Custom Memory Allocator</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/127.md'>127</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/127.md'>Add an -index Option to [lsearch]</a></td>
<td valign='top'><a href='/tcl/tktview/693836'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/126.md'>126</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/126.md'>Rich Strings for Representation Persistence</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/125.md'>125</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/125.md'>Converting between Frame and Toplevel Windows</a></td>
<td valign='top'><a href='/tk/tktview/998125'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/124.md'>124</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/124.md'>High-Resolution Absolute Time Values From [clock]</a></td>
<td valign='top'><a href='/tcl/tktview/656997'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/123.md'>123</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/123.md'>Adding an Exponentiation Operator to the [expr] Command</a></td>
<td valign='top'><a href='/tcl/tktview/655176'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/122.md'>122</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/122.md'>Use tcl_{non,}wordchars Throughout Tcl/Tk</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/121.md'>121</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/121.md'>Controlled Application Shutdown via Tcl_Exit</a></td>
<td valign='top'><a href='/tcl/tktview/649313'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/120.md'>120</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/120.md'>Restricted DDE Services</a></td>
<td valign='top'><a href='/tcl/tktview/649859'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/119.md'>119</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/119.md'>Angled Text on a Canvas</a></td>
<td valign='top'><a href='/tk/tktview/1611359'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/118.md'>118</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/118.md'>Enhance [file attributes] and [file copy] on Mac OS X &amp; BSD</a></td>
<td valign='top'><a href='/tcl/tktview/626360'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/117.md'>117</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/117.md'>Object Type Introspection</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/116.md'>116</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/116.md'>More Safety for Large Images</a></td>
<td valign='top'><a href='/tk/tktview/646382'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-90'>
<td valign='top'><a href='./tip/115.md'>115</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/115.md'>Making Tcl Truly 64-Bit Ready</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/114.md'>114</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/114.md'>Eliminate Octal Parsing of Leading Zero Integer Strings</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-114'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/113.md'>113</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/113.md'>Multi-Line Searches in the Text Widget</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/112.md'>112</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/112.md'>Ensembles are Namespaces are Commands</a></td>
<td valign='top'><a href='/tcl/tktview/786509'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/111.md'>111</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/111.md'>Dictionary Values and Manipulators</a></td>
<td valign='top'><a href='/tcl/tktview/654893'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/110.md'>110</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/110.md'>Add a Tristate Mode to the Checkbutton and Radiobutton</a></td>
<td valign='top'><a href='/tk/tktview/863271'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/109.md'>109</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/109.md'>New Look for Checkbutton and Radiobutton on Unix</a></td>
<td valign='top'><a href='/tk/tktview/776545'>Link</a></td>
</tr>
<tr class='state-final type-informational'>
<td valign='top'><a href='./tip/108.md'>108</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Final</td>
<td valign='top'  colspan=2><a href='./tip/108.md'>Summary of Changes to Generic Tcl/Tk Code to Enable Mac OS X Port</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/107.md'>107</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/107.md'>Fix the 2-second &quot;raise delay&quot; in Tk</a></td>
<td valign='top'><a href='/tk/tktview/601518'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/106.md'>106</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/106.md'>Add Encoding Abilities to the [dde] Command</a></td>
<td valign='top'><a href='/tcl/timeline?r=tip-106-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/105.md'>105</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/105.md'>Add Prefix Matching for Switch</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/104.md'>104</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/104.md'>Generalization of the Tk Undo Subsystem</a></td>
<td valign='top'><a href='/tk/tktview/554763'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/103.md'>103</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/103.md'>Argument Expansion Command</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/102.md'>102</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/102.md'>Change [trace list] to [trace info]</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/101.md'>101</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/101.md'>Export Tcltest Configuration</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/100.md'>100</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/100.md'>Add Support for Unloading Dynamic Libraries Loaded with [load]</a></td>
<td valign='top'><a href='/tcl/tktview/823486'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/99.md'>99</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/99.md'>Add &apos;file link&apos; to Tcl</a></td>
<td valign='top'><a href='/tcl/tktview/562970'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/98.md'>98</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/98.md'>Adding Transparency Compositing Rules to Photo Images</a></td>
<td valign='top'><a href='/tk/tktview/566765'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/97.md'>97</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/97.md'>Moving Vertices of Canvas Items</a></td>
<td valign='top'><a href='/tk/tktview/2157629'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/96.md'>96</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/96.md'>Add [tk caret] Command and Tk_SetCaretPos API</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/95.md'>95</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/95.md'>Add [wm attributes] Command</a></td>
<td valign='top'><a href='/tk/tktview/553926'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/94.md'>94</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/94.md'>Add Listbox -activestyle Option</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/93.md'>93</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/93.md'>Get/Delete Enhancement for the Tk Text Widget</a></td>
<td valign='top'><a href='http://faqchest.dynhost.com/prgm/ptk-l/ptk-01/ptk-0112/ptk-011201/ptk01122716_24437.html'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-84'>
<td valign='top'><a href='./tip/92.md'>92</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/92.md'>Move Package Load Decisions to Application Developer</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/91.md'>91</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/91.md'>Backward Compatibility for Channel Types with 32-bit SeekProcs</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/90.md'>90</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/90.md'>Enable [return -code] in Control Structure Procs</a></td>
<td valign='top'><a href='/tcl/tktview/531640'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-86'>
<td valign='top'><a href='./tip/89.md'>89</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/89.md'>Try/Catch Exception Handling in the Core</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-84'>
<td valign='top'><a href='./tip/88.md'>88</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/88.md'>Extend Tcl Process Id Control via &apos;pid&apos;</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/87.md'>87</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/87.md'>Allow Tcl Access to the Recursion Limit</a></td>
<td valign='top'><a href='/tcl/tktview/522849'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/86.md'>86</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/86.md'>Improved Debugger Support</a></td>
<td valign='top'><a href='http://pdqi.com/download/tclline-8.4.9.diff.gz'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/85.md'>85</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/85.md'>Custom Comparisons in Tcltest</a></td>
<td valign='top'><a href='/tcl/tktview/521362'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/84.md'>84</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/84.md'>Add control for mouse movement filtering</a></td>
<td valign='top'><a href='/tk/tktview/564642'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/83.md'>83</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/83.md'>Augment Tcl_EvalFile with Tcl_EvalChannel and Tcl_EvalUrl</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/82.md'>82</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/82.md'>Add -offrelief Option to Checkbutton and Radiobutton</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-process'>
<td valign='top'><a href='./tip/81.md'>81</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Withdrawn</td>
<td valign='top'  colspan=2><a href='./tip/81.md'>[incr Tcl] Functional Areas for Maintainer Assignments</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/80.md'>80</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/80.md'>Additional Options for &apos;lsearch&apos;</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/79.md'>79</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/79.md'>Add Deletion Callback to Tcl_CreateObjTrace</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/78.md'>78</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/78.md'>TEA 2.0 Definitions</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/77.md'>77</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/77.md'>Support for Nested Paired Item Lists</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/76.md'>76</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/76.md'>Make &apos;regsub&apos; Return a String</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/75.md'>75</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/75.md'>Refer to Sub-RegExps Inside &apos;switch -regexp&apos; Bodies</a></td>
<td valign='top'><a href='/tcl/tktview/848578'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/74.md'>74</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/74.md'>wm stackorder command</a></td>
<td valign='top'><a href='/tk/tktview/481148'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/73.md'>73</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/73.md'>Export Tcl_GetTime in the Public API</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/72.md'>72</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/72.md'>64-Bit Value Support for Tcl on 32-Bit Platforms</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/71.md'>71</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/71.md'>Tk Bitmap Image Improvements</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/70.md'>70</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/70.md'>A Relational Switch Control Structure</a></td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/69.md'>69</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top' ><a href='./tip/69.md'>Improvements for the Tcl Hash Table</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/68.md'>68</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/68.md'>Dynamic Trace Result Handling</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/67.md'>67</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/67.md'>Allow Subclassing of tk_getOpenFile, tk_getSaveFile on UNIX</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/66.md'>66</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/66.md'>Stand-alone and Embedded Tcl/Tk Applications</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/65.md'>65</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/65.md'>Enhanced [info args]</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-84'>
<td valign='top'><a href='./tip/64.md'>64</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/64.md'>Improvements to Windows Font Handling</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/63.md'>63</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/63.md'>Add -compound Option to Menu Entries</a></td>
<td valign='top'><a href='ftp://ftp.ucsd.edu/pub/alpha/tcl/compoundmenu.diff'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/62.md'>62</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/62.md'>Add Support for Command Tracing</a></td>
<td valign='top'><a href='http://www.employees.org/~hlavana/tcl/'>Link</a></td>
</tr>
<tr class='state-deferred type-project version-85'>
<td valign='top'><a href='./tip/61.md'>61</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top' ><a href='./tip/61.md'>Make TK_NO_SECURITY Run-Time Switchable</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-86'>
<td valign='top'><a href='./tip/60.md'>60</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/60.md'>EXTERN Macro Change to Support a Wider Set of Attributes</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/59.md'>59</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/59.md'>Embed Build Information in Tcl Binary Library</a></td>
<td valign='top'><a href='/tcl/tktview/507083'>Link</a></td>
</tr>
<tr class='state-rejected type-project version-85'>
<td valign='top'><a href='./tip/58.md'>58</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/58.md'>Extend [set] to Assign Multiple Values to Multiple Variables</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/57.md'>57</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/57.md'>Move TclX&apos;s [lassign] into the Tcl Core</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/56.md'>56</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/56.md'>Standardize Call Interface to Tcl_Eval* Functions</a></td>
<td valign='top'><a href='/tcl/tktview/455151'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/55.md'>55</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/55.md'>Package Format for Tcl Extensions</a></td>
</tr>
<tr class='state-withdrawn type-process'>
<td valign='top'><a href='./tip/54.md'>54</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Withdrawn</td>
<td valign='top'  colspan=2><a href='./tip/54.md'>Using PURLs to Unite the Tcl Webspace</a></td>
</tr>
<tr class='state-withdrawn type-project version-84'>
<td valign='top'><a href='./tip/53.md'>53</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/53.md'>Addition of &apos;assert&apos; Command</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/52.md'>52</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/52.md'>Hierarchical Namespace Lookup of Commands and Variables</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/51.md'>51</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/51.md'>Native Menubutton on Macintosh</a></td>
<td></td>
</tr>
<tr class='state-final type-informational'>
<td valign='top'><a href='./tip/50.md'>50</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Final</td>
<td valign='top'  colspan=2><a href='./tip/50.md'>Bundle [incr Tcl] with the Core Tcl distribution</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/49.md'>49</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/49.md'>I/O Subsystem: Add API Tcl_OutputBuffered(chan)</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/48.md'>48</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/48.md'>Tk Widget Styling Support</a></td>
<td valign='top'><a href='http://www.purl.org/NET/bonnet/pub/style.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/47.md'>47</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/47.md'>Modifying Tk to Allow Writing X Window managers</a></td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/computer/wmenablers.84a3.patch.gz'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/46.md'>46</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/46.md'>Consistent Overlap Behavior of Area-Defining Canvas Items</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/45.md'>45</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4b1</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/45.md'>Empty index lists for [lindex] and [lset]</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/44.md'>44</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/44.md'>Move Tk&apos;s Private Commands and Variables into ::tk Namespace</a></td>
<td valign='top'><a href='/tk/tktview/220936'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/43.md'>43</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/43.md'>How to be a TIP Editor</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/42.md'>42</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/42.md'>Add New Standard Tk Option: -clientdata</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/41.md'>41</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/41.md'>Paned Window Tk Widget</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-80'>
<td valign='top'><a href='./tip/40.md'>40</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.0</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/40.md'>Documentation Generator for Tcl Scripts</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/39.md'>39</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/39.md'>Add New Standard Tk Option: -component</a></td>
<td></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/38.md'>38</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/38.md'>Add Support for Default Bindtags</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/37.md'>37</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/37.md'>Uniform Rows and Columns in Grid</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/36.md'>36</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/36.md'>Library Access to &apos;Subst&apos; Functionality</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/35.md'>35</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/35.md'>Enhanced Support for Serial Communications</a></td>
<td valign='top'><a href='/tcl/tktview/438509'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-85'>
<td valign='top'><a href='./tip/34.md'>34</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/34.md'>Modernize TEA Build System</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/33.md'>33</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/33.md'>Add &apos;lset&apos; Command to Assign to List Elements</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/32.md'>32</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/32.md'>Add Tcl_Obj-enabled counterpart to Tcl_CreateTrace</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/31.md'>31</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/31.md'>CVS tags in the Tcl and Tk repositories</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/30.md'>30</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/30.md'>Tk Toolkit Maintainer Assignments</a></td>
</tr>
<tr class='state-rejected type-project version-90'>
<td valign='top'><a href='./tip/29.md'>29</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/29.md'>Allow array syntax for Tcl lists</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/28.md'>28</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/28.md'>How to be a good maintainer for Tcl/Tk</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/27.md'>27</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/27.md'>CONST Qualification on Pointers in Tcl API&apos;s</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/26.md'>26</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/26.md'>Enhancements for the Tk Text Widget</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tips/raw/assets/26.patch'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project version-85'>
<td valign='top'><a href='./tip/25.md'>25</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/25.md'>Native tk_messageBox  on Macintosh</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/24.md'>24</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/24.md'>Tcl Maintainer Assignments</a></td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/23.md'>23</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'  colspan=2><a href='./tip/23.md'>Tk Toolkit Functional Areas for Maintainer Assignments</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/22.md'>22</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/22.md'>Multiple Index Arguments to lindex</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/21.md'>21</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/21.md'>Asymmetric Padding in the Pack and Grid Geometry Managers</a></td>
<td valign='top'><a href='http://www.hwaci.com/sw/asym_pad_patch_2.txt'>Link</a></td>
</tr>
<tr class='state-deferred type-project version-85'>
<td valign='top'><a href='./tip/20.md'>20</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top' ><a href='./tip/20.md'>Add C Locale-Exact CType Functions</a></td>
<td></td>
</tr>
<tr class='state-obsoleted type-project version-84'>
<td valign='top'><a href='./tip/19.md'>19</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Obsoleted</td>
<td valign='top' ><a href='./tip/19.md'>Add a Text Changed Flag to Tk&apos;s Text Widget</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/18.md'>18</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/18.md'>Add Labels to Frames</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/17.md'>17</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/17.md'>Redo Tcl&apos;s filesystem</a></td>
<td></td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/16.md'>16</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'  colspan=2><a href='./tip/16.md'>Tcl Functional Areas for Maintainer Assignments</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/15.md'>15</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/15.md'>Functions to List and Detail Math Functions</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/14.md'>14</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/14.md'>Access to Tk Photo Image Transparency</a></td>
<td valign='top'><a href='http://www.cs.man.ac.uk/~fellowsd/tcl/validRegion.patch'>Link</a></td>
</tr>
<tr class='state-obsoleted type-process'>
<td valign='top'><a href='./tip/13.md'>13</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Obsoleted</td>
<td valign='top'  colspan=2><a href='./tip/13.md'>Web Service for Drafting and Archiving TIPs</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/12.md'>12</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/12.md'>The &quot;Batteries Included&quot; Distribution</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/11.md'>11</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/11.md'>Tk Menubutton Enhancement: -compound option for menubutton</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/10.md'>10</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/10.md'>Tcl I/O Enhancement: Thread-Aware Channels</a></td>
<td valign='top'><a href='https://core.tcl-lang.org/tips/raw/assets/10.patch'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project version-84'>
<td valign='top'><a href='./tip/9.md'>9</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top' ><a href='./tip/9.md'>Tk Standard Library</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/8.md'>8</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/8.md'>Add Winico support to the wm command on windows</a></td>
<td valign='top'><a href='ftp://ftp.ucsd.edu/pub/alpha/tcl/tkWinWm.diff'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/7.md'>7</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/7.md'>Increased resolution for TclpGetTime on Windows</a></td>
<td></td>
</tr>
<tr class='state-rejected type-project version-84'>
<td valign='top'><a href='./tip/6.md'>6</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Rejected</td>
<td valign='top' ><a href='./tip/6.md'>Include [Incr Tcl] in the Core Tcl distribution</a></td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/5.md'>5</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top' ><a href='./tip/5.md'>Make TkClassProcs and TkSetClassProcs Public and Extensible</a></td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/4.md'>4</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/4.md'>Tcl Release and Distribution Philosophy</a></td>
</tr>
<tr class='state-obsoleted type-process'>
<td valign='top'><a href='./tip/3.md'>3</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Obsoleted</td>
<td valign='top'  colspan=2><a href='./tip/3.md'>TIP Format</a></td>
</tr>
<tr class='state-draft type-process'>
<td valign='top'><a href='./tip/2.md'>2</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Draft</td>
<td valign='top'  colspan=2><a href='./tip/2.md'>TIP Guidelines</a></td>
</tr>
<tr class='state-obsoleted type-informational'>
<td valign='top'><a href='./tip/1.md'>1</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Obsoleted</td>
<td valign='top'  colspan=2><a href='./tip/1.md'>TIP Index</a></td>
</tr>
<tr class='state-final type-process'>
<td valign='top'><a href='./tip/0.md'>0</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Final</td>
<td valign='top'  colspan=2><a href='./tip/0.md'>Tcl Core Team Basic Rules</a></td>
</tr>

</tbody></table>
</div>
