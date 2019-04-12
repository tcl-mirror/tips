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
    console.log("NONE:"+none);
    var i = r.length;
    while (i--) {
        if (r[i].selectorText && r[i].selectorText.substr(1,f.length).toLowerCase() === f) {
            sheet.deleteRule(i);
        }
    }
    if (!none) {
        for (i=0; i<boxes.length; i++) {
            console.log(boxes[i]);
            if (!boxes[i].checked) {
                sheet.insertRule("."+f+"-"+boxes[i].dataset.value + " {display:none;}", 0);
            }
        }
    }
}
</script>

State: 

    <input class="toggler-state"
        data-value="draft"
        type="checkbox"
        onclick="toggleFacet('state')">Draft</button>


    <input class="toggler-state"
        data-value="final"
        type="checkbox"
        onclick="toggleFacet('state')">Final</button>


    <input class="toggler-state"
        data-value="accepted"
        type="checkbox"
        onclick="toggleFacet('state')">Accepted</button>


    <input class="toggler-state"
        data-value="voting"
        type="checkbox"
        onclick="toggleFacet('state')">Voting</button>


    <input class="toggler-state"
        data-value="rejected"
        type="checkbox"
        onclick="toggleFacet('state')">Rejected</button>


    <input class="toggler-state"
        data-value="withdrawn"
        type="checkbox"
        onclick="toggleFacet('state')">Withdrawn</button>


    <input class="toggler-state"
        data-value="obsoleted"
        type="checkbox"
        onclick="toggleFacet('state')">Obsoleted</button>


    <input class="toggler-state"
        data-value="deferred"
        type="checkbox"
        onclick="toggleFacet('state')">Deferred</button>


    <input class="toggler-state"
        data-value="active"
        type="checkbox"
        onclick="toggleFacet('state')">Active</button>

<br>
Type: 

    <input class="toggler-type"
        data-value="project"
        type="checkbox"
        onclick="toggleFacet('type')">Project</button>


    <input class="toggler-type"
        data-value="process"
        type="checkbox"
        onclick="toggleFacet('type')">Process</button>


    <input class="toggler-type"
        data-value="informational"
        type="checkbox"
        onclick="toggleFacet('type')">Informational</button>

<br>
Version: 

    <input class="toggler-version"
        data-value="87"
        type="checkbox"
        onclick="toggleFacet('version')">87</button>


    <input class="toggler-version"
        data-value="90"
        type="checkbox"
        onclick="toggleFacet('version')">90</button>


    <input class="toggler-version"
        data-value="86"
        type="checkbox"
        onclick="toggleFacet('version')">86</button>


    <input class="toggler-version"
        data-value="85"
        type="checkbox"
        onclick="toggleFacet('version')">85</button>


    <input class="toggler-version"
        data-value="84"
        type="checkbox"
        onclick="toggleFacet('version')">84</button>

<br>


</div>
<p>

<div style="float:right; font-size:10pt" class="key">
<table border="1" cellpadding="2" cellspacing="0">
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

<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/538.md'>538</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 538: Externalize libtommath</td>
<td valign='top'><a href='/tcl/timeline?r=digit-bit-60'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/537.md'>537</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 537: Enable 64-bit indexes in regexp matching</td>
<td valign='top'><a href='/tcl/timeline?r=regexp-api-64bit'>Link</a></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/536.md'>536</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 536: Improvements to Mac-specific IPC in Tk</td>
<td valign='top'><a href='/tk/timeline?r=mac_services'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/535.md'>535</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 535: Remove trailing zeroes in scale ticks</td>
<td valign='top'><a href='/tcl/timeline?r=scale-tick-format'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/534.md'>534</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 534: Faster Hashing of Small Integers</td>
<td valign='top'><a href='/tcl/timeline?r=dkf-experimental-fast-number-hash'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/533.md'>533</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 533: Extension of the menu post command.</td>
<td valign='top'><a href='/tk/timeline?r=bug-70e531918e'>Link</a></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/532.md'>532</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6 and 8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 532: Re-implementation of event loop processing.</td>
<td valign='top'><a href='/tk/timeline?r=bug6e8afe516d'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/531.md'>531</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 531: Static Tcl Interpreter Creation Function</td>
<td valign='top'><a href='/tcl/timeline?r=tip-531'>Link</a></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/530.md'>530</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6, 8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 530: Control over performance impact of TIP 280</td>
<td valign='top'><a href='/tcl/tktview/a09031e288'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/529.md'>529</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 529: Add metadata dict property to tk photo image</td>
<td valign='top'><a href='/tk/timeline?r=tip-529-image-metadata'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/528.md'>528</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 528: Deprecate Tk_Offset()</td>
<td valign='top'><a href='/tk/timeline?r=offsetof'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/527.md'>527</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 527: New measurement facilities in TCL: New command timerate.</td>
<td valign='top'><a href='/tcl/timeline?r=sebres-8-6-timerate'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/526.md'>526</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 526: Make [expr] Only Accept One Argument</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/525.md'>525</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 525: Make Tcltest Report Overall Success in a Machine-Readable Way</td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/524.md'>524</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 524: Custom Definition Dialects for TclOO</td>
<td valign='top'><a href='/tcl/timeline?r=tip-524'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/523.md'>523</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 523: New lpop command</td>
<td valign='top'><a href='/tcl/timeline?r=tip-523'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/522.md'>522</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 522: Test error codes with Tcltest</td>
<td valign='top'><a href='/tcl/timeline?r=tip-522'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/521.md'>521</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 521: Floating Point Classification Functions</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/520.md'>520</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 520: Make NaN Quiet</td>
<td valign='top'><a href='/tcl/timeline?r=tip-520'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/519.md'>519</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 519: Inline export/unexport option to TclOO method definition</td>
<td valign='top'><a href='/tcl/timeline?r=tip-519'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/518.md'>518</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 518: Virtual Event when Last Child is not Managed any more</td>
<td valign='top'><a href='/tk/timeline?r=tip518-event-last-child-unmanaged'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/517.md'>517</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 517: Add -activerelief Configuration Option to the menu widget</td>
<td valign='top'><a href='/tk/timeline?r=tip-517'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/516.md'>516</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 516: More OO Slot Operations</td>
<td valign='top'><a href='/tcl/timeline?r=tip-516'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/515.md'>515</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 515: Level Value Reform</td>
<td valign='top'><a href='/tcl/timeline?r=tip-515'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/514.md'>514</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 514: Platform differences in handling int/wide</td>
<td valign='top'><a href='/tcl/timeline?r=tip-514'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/513.md'>513</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 513: Better support for &apos;agendas&apos; as arrays, dictionaries or lists</td>
<td valign='top'><a href='https://core.tcl.tk/tips/doc/trunk/attach/513/agendas.tcl'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/512.md'>512</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 512: No stub for Tcl_SetExitProc()</td>
<td valign='top'><a href='/tcl/timeline?r=tip-512'>Link</a></td>
</tr>
<tr class='state-accepted type-project version-87'>
<td valign='top'><a href='./tip/511.md'>511</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 511: Implement Tcl_AsyncMarkFromSignal()</td>
<td valign='top'><a href='https://www.androwish.org/index.html/info/40790af1e8e4ec9f'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/510.md'>510</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 510: Add Rbc and Tkpath widgets to Tk</td>
<td valign='top'><a href='/tk/timeline?r=tip-510'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/509.md'>509</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 509: Implement reentrant mutexes on all platforms</td>
<td valign='top'><a href='/tcl/timeline?r=tip-509'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/508.md'>508</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 508: New subcommand [array default]</td>
<td valign='top'><a href='/tcl/timeline?r=tip-508'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/507.md'>507</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 507: Include simple SVG support with nanosvg</td>
<td valign='top'><a href='/tk/timeline?r=tip-507'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/506.md'>506</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 506: Purge RefCount Macros</td>
<td valign='top'><a href='/tcl/timeline?r=tip-506'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/505.md'>505</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.9</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 505: Make [lreplace] Accept All Out-of-Range Index Values</td>
<td valign='top'><a href='/tcl/timeline?r=tip-505'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/504.md'>504</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 504: New subcommand [string insert]</td>
<td valign='top'><a href='/tcl/timeline?r=dgp-string-insert'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/503.md'>503</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 503: End Tcl 8.3 Source Compatibility Support</td>
<td valign='top'><a href='/tcl/timeline?r=tip-503'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/502.md'>502</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 502: Index Value Reform</td>
<td valign='top'><a href='/tcl/timeline?r=tip-502'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/501.md'>501</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 501: string is dict</td>
<td valign='top'><a href='/tcl/timeline?r=tip-501'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/500.md'>500</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 500: Private Methods and Variables in TclOO</td>
<td valign='top'><a href='/tcl/timeline?r=tip-500'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/499.md'>499</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 499: Custom locale search list for msgcat</td>
<td valign='top'><a href='/tcl/timeline?r=tip499-msgcat-custom-preferences'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/498.md'>498</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 498: Simplify Tcl_DeleteNamespace</td>
<td valign='top'><a href='/tcl/timeline?r=bug-e593adf103-core-8'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/497.md'>497</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 497: Full support for Unicode 11.0 and later (part 2)</td>
<td valign='top'><a href='/tcl/timeline?r=tip-497'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/496.md'>496</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 496: Display hints in ::entry ::spinbox ::ttk::entry ::ttk::spinbox and ::ttk::combobox</td>
<td valign='top'><a href='/tk/timeline?r=tip-496'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/495.md'>495</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 495: Tcl Based Build System for TEA projects</td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/494.md'>494</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 494: More use of size_t in Tcl 9</td>
<td valign='top'><a href='/tcl/timeline?r=memory-API'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/493.md'>493</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 493: Cease Distribution of http 1.0</td>
<td valign='top'><a href='/tcl/timeline?r=tip-493'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/492.md'>492</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 492: Introspection for &apos;tk busy&apos;</td>
<td valign='top'><a href='/tk/timeline?r=tip-492'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/491.md'>491</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 491: Threading Support: phasing out non-threaded builds</td>
<td valign='top'><a href='/tcl/timeline?r=tip-491'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/490.md'>490</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 490: msgcat for TclOO</td>
<td valign='top'><a href='/tcl/timeline?r=tip490-msgcat-oo-2'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/489.md'>489</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 489: Add image widget command to the Tk canvas</td>
<td valign='top'><a href='/tk/timeline?r=canvas_image'>Link</a></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/488.md'>488</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 488: Remove tcl_precision</td>
<td valign='top'><a href='/tcl/timeline?r=tip-488'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/487.md'>487</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 487: Stop support for Pre-XP Windows</td>
<td valign='top'><a href='/tcl/timeline?r=tip-487'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/486.md'>486</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 486: Thread 3.0 is for Tcl 9</td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/485.md'>485</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 485: Remove Deprecated API</td>
<td valign='top'><a href='/tcl/timeline?r=tip-485'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/484.md'>484</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 484: Merge &apos;int&apos; and &apos;wideInt&apos; Obj-type to a single &apos;int&apos;</td>
<td valign='top'><a href='/tcl/timeline?r=no-wideint'>Link</a></td>
</tr>
<tr class='state-accepted type-project version-87'>
<td valign='top'><a href='./tip/483.md'>483</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 483: Improved TIP #59 implementation for Tk</td>
<td valign='top'><a href='/tk/timeline?r=tk-stu-pkg'>Link</a></td>
</tr>
<tr class='state-accepted type-project version-87'>
<td valign='top'><a href='./tip/482.md'>482</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 482: Record Tk demo directory information</td>
<td valign='top'><a href='/tk/timeline?r=tk-stu-pkg'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/481.md'>481</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 481: `Tcl_GetStringFromObj()` with `size_t` length parameter</td>
<td valign='top'><a href='/tcl/timeline?r=tip-481'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/480.md'>480</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 480: Type and Alias Assertions for Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=tip-480'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/479.md'>479</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 479: Add Named Procedures as a New Command in Tcl (dictargs::proc)</td>
<td valign='top'><a href='/tcl/timeline?r=tip479'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/478.md'>478</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 478: Add Expected Class Level Behaviors to oo::class</td>
<td valign='top'><a href='/tcl/timeline?r=tip-478'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/477.md'>477</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.8</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 477: Modernize the nmake build system</td>
<td valign='top'><a href='/tcl/timeline?r=vc-reform'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/476.md'>476</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 476: Scan/Printf format consistency</td>
<td valign='top'><a href='/tcl/timeline?r=z_modifier'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/475.md'>475</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 475: Add [string insert] Command and C API</td>
<td></td>
</tr>
<tr class='state-draft type-project version-86'>
<td valign='top'><a href='./tip/474.md'>474</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 474: Treat the mouse wheel events in a uniform way</td>
<td valign='top'><a href='/tk/timeline?r=tip474-uniform-mouse-wheel'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/473.md'>473</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 473: Allow a Defined Target Namespace in oo::copy</td>
<td valign='top'><a href='/tcl/timeline?r=oo-copy-ns'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/472.md'>472</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 472: Add Support for 0d Radix Prefix to Integer Literals</td>
<td valign='top'><a href='/tcl/timeline?r=bsg-0d-radix-prefix'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/471.md'>471</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 471: Add [info linkedname] Introspection Command</td>
<td valign='top'><a href='/tcl/timeline?r=info-linkedname'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/470.md'>470</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 470: Reliable Access to OO Definition Context Object</td>
<td valign='top'><a href='/tcl/timeline?r=tip-470'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/469.md'>469</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 469: A Callback for Channel-Exception Conditions</td>
<td valign='top'><a href='/tcl/timeline?r=tip-469'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/468.md'>468</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 468: Support Passing TCP listen Backlog Size Option to TCP Socket Creation</td>
<td valign='top'><a href='/tcl/timeline?r=tip-468-bis'>Link</a></td>
</tr>
<tr class='state-final type-process'>
<td valign='top'><a href='./tip/467.md'>467</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 467: Move TIP Collection to Fossil</td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/466.md'>466</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 466: Revised Implementation of the Text Widget</td>
<td valign='top'><a href='/tk/timeline?r=revised_text'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/465.md'>465</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 465: Change Rule 8 of the Dodekalogue to Cut Some Corner Cases</td>
<td valign='top'><a href='/tcl/timeline?r=tip-465'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/464.md'>464</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 464: Support for Multimedia Keys on Windows</td>
<td valign='top'><a href='/tcl/timeline?r=tip-464'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/463.md'>463</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 463: Command-Driven Substitutions for regsub</td>
<td valign='top'><a href='/tcl/timeline?r=tip-463'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/462.md'>462</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 462: Add New [::tcl::process] Ensemble for Subprocess Management</td>
<td valign='top'><a href='/tcl/timeline?r=tip-462'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/461.md'>461</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 461: Separate Numeric and String Comparison Operators</td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/460.md'>460</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 460: An Alternative to Upvar</td>
<td valign='top'><a href='/tcl/timeline?r=dah-proc-arg-upvar'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/459.md'>459</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 459: Tcl Package Introspection Improvements</td>
<td valign='top'><a href='/tcl/timeline?r=package_files'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/458.md'>458</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 458: Add Support for epoll() and kqueue() in the Notifier</td>
<td valign='top'><a href='/tcl/timeline?r=tip-458'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/457.md'>457</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 457: Add Support for Named Arguments</td>
<td valign='top'><a href='/tcl/timeline?r=tip-457'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/456.md'>456</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 456: Extend the C API to Support Passing Options to TCP Server Creation</td>
<td valign='top'><a href='/tcl/timeline?r=tip-456'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/455.md'>455</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 455: Extensions to [vwait]: Variable Sets and Scripted Access to Tcl_DoOneEvent</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/454.md'>454</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 454: Automatically Resize Frames After Last Child Removed</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/453.md'>453</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 453: Tcl Based Automation for tcl/pkgs</td>
<td valign='top'><a href='https://core.tcl.tk/tclconfig/timeline?r=practcl'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/452.md'>452</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 452: Add &quot;stubs&quot; Package to or Along Side of TclTest</td>
<td valign='top'><a href='/tcl/timeline?r=tip-452'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/451.md'>451</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 451: Modify [update] to Give Full Script Access to Tcl_DoOneEvent</td>
<td valign='top'><a href='/tcl/timeline?r=updateextended'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/450.md'>450</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 450: Add [binary] subcommand &quot;set&quot; for in-place modification</td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/449.md'>449</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 449: [text] undo/redo to Return Range of Characters</td>
<td valign='top'><a href='/tk/timeline?r=tip-449'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/448.md'>448</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 448: Update Tcl_SetNotifier to Reinitialize Event Loop</td>
<td valign='top'><a href='http://fossil.etoyoc.com/sandbox/tcllib/artifact/b2b272a285811272'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/447.md'>447</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 447: Execution Time Verbosity Levels in tcltest::configure</td>
<td valign='top'><a href='/tcl/timeline?r=gahr-tip-447'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/446.md'>446</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 446: Introspect Undo/Redo Stack Depths</td>
<td valign='top'><a href='/tk/timeline?r=tip-446'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/445.md'>445</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 445: Tcl_ObjType Utility Routines</td>
<td valign='top'><a href='/tcl/timeline?r=tip-445'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/444.md'>444</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 444: Add &quot;weekdays&quot; unit in clock add</td>
<td valign='top'><a href='/tcl/timeline?r=tip-444'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/443.md'>443</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 443: More Tag Configuration Options for the Text Widget</td>
<td valign='top'><a href='/tk/timeline?r=tip-443'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/442.md'>442</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 442: Display text in progressbars</td>
<td valign='top'><a href='/tk/timeline?r=tip-442'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/441.md'>441</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 441: Add -justify Configuration Option to the listbox Widget</td>
<td valign='top'><a href='/tk/timeline?r=tip-441'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/440.md'>440</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 440: Add engine to tcl_platform Array</td>
<td valign='top'><a href='/tcl/timeline?r=tclPlatformEngine'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/439.md'>439</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 439: Semantic Versioning</td>
<td valign='top'><a href='/tcl/timeline?r=semver'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/438.md'>438</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 438: Ensure Line Metrics are Up-to-Date</td>
<td valign='top'><a href='/tk/timeline?r=tip-438'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/437.md'>437</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5.18</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 437: Tk panedwindow options for proxy window</td>
<td valign='top'><a href='/tk/timeline?r=tip-437'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/436.md'>436</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 436: Improve TclOO isa Introspection</td>
<td valign='top'><a href='https://core.tcl.tk/tcloo/info/5fa1374aa026d4c7'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/435.md'>435</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 435: Safe Mutex Disposal API</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/434.md'>434</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 434: Specify Event Sources for &apos;vwait&apos;</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/433.md'>433</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 433: Add %M binding substitution</td>
<td valign='top'><a href='/tk/timeline?r=bindScriptCount'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/432.md'>432</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.3</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 432: Support for New Windows File Dialogs in Vista and Later</td>
<td valign='top'><a href='/tk/timeline?r=apn-win-filedialogs'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/431.md'>431</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 431: Add &apos;tempdir&apos; Subcommand to &apos;file&apos;</td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/430.md'>430</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 430: Add basic ZIP archive support to Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=core_zip_vfs'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/429.md'>429</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.2</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 429: A &apos;string&apos; Subcommand for Concatenation</td>
<td valign='top'><a href='/tcl/timeline?r=tip-429'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/428.md'>428</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 428: Produce Error Dictionary from &apos;fconfigure -error&apos;</td>
<td valign='top'><a href='/tcl/timeline?r=tip-428'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/427.md'>427</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 427: Introspection of Asynchronous Socket Connection</td>
<td valign='top'><a href='/tcl/timeline?r=tip-427'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/426.md'>426</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 426: Determining the &quot;Type&quot; of Commands</td>
<td valign='top'><a href='/tcl/timeline?r=dkf-command-type'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/425.md'>425</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 425: Correct use of UTF-8 in Panic Callback (Windows only)</td>
<td valign='top'><a href='/tcl/timeline?r=win-console-panic'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/424.md'>424</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 424: Improving [exec]</td>
<td valign='top'><a href='/tcl/timeline?r=tip-improve-exec'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/423.md'>423</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 423: Formatting Timestamps with Milliseconds</td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/422.md'>422</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 422: Don&apos;t Use stdarg.h/va_list in Public API</td>
<td valign='top'><a href='/tcl/timeline?r=tip-422'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/421.md'>421</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 421: A Command for Iterating Over Arrays</td>
<td valign='top'><a href='/tcl/timeline?r=tip-421'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/420.md'>420</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 420: &apos;vexpr&apos;, a Vector Expression Command</td>
<td valign='top'><a href='http://www.etoyoc.com/tclmatrix3d'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/419.md'>419</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 419: A New Command for Binding to Tk Events</td>
<td valign='top'><a href='http://wiki.tcl.tk/tkevent'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/418.md'>418</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 418: Add [binary] Subcommands for In-Place Modification</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/417.md'>417</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 417: Use Explicit Option Names for &quot;file tempfile&quot;</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/416.md'>416</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 416: New Options for &apos;load&apos;: -global and -lazy</td>
<td valign='top'><a href='/tcl/timeline?r=frq-3579001'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/415.md'>415</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 415: Enable Easy Creation of Circular Arc Segments</td>
<td valign='top'><a href='/tk/timeline?r=tip-415'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/414.md'>414</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 414: Add (back) Tcl_InitSubsystems as Public API</td>
<td valign='top'><a href='/tcl/timeline?r=initsubsystems'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/413.md'>413</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 413: Unicode Support for &apos;string is space&apos; and &apos;string trim&apos;</td>
<td valign='top'><a href='/tcl/timeline?r=tip-318-update'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/412.md'>412</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 412: Dynamic Locale Changing for msgcat with On-Demand File Load</td>
<td valign='top'><a href='/tcl/timeline?r=msgcat_dyn_locale'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/411.md'>411</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 411: Improved Channel Introspection via &quot;chan info&quot;</td>
<td valign='top'><a href='http://sqlitestudio.pl/tcl/patches/tip-411-chan_info.patch'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/410.md'>410</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 410: Three Features of scan Adapted for binary scan/format</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/409.md'>409</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 409: UDP in Tcl</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/408.md'>408</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 408: Allow Any Command for expr Functions</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/407.md'>407</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 407: The String Representation of Tcl Lists: the Gory Details</td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/406.md'>406</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 406: &quot;C&quot; is for Cookie</td>
<td valign='top'><a href='/tcl/timeline?r=dkf-http-cookies'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/405.md'>405</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 405: Add Collecting Loops, the &apos;lmap&apos; and &apos;dict map&apos; Commands</td>
<td valign='top'><a href='/tcl/tktview/3163961'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/404.md'>404</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 404: Let Message Catalogs get the Locale from their File Name</td>
<td valign='top'><a href='/tcl/tktview/3544988'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/403.md'>403</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 403: Web Colors for Tk</td>
<td valign='top'><a href='/tk/timeline?r=jn-web-colors'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/402.md'>402</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 402: General Platform UNC Support</td>
<td valign='top'><a href='/tcl/timeline?r=jn-unc-vfs'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/401.md'>401</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 401: Comment Words with Leading {#}</td>
<td valign='top'><a href='/tcl/timeline?r=tip-401'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/400.md'>400</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 400: Setting the Compression Dictionary and Other &apos;zlib&apos; Updates</td>
<td valign='top'><a href='/tcl/timeline?r=tip-400-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/399.md'>399</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 399: Dynamic Locale Changing for msgcat</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/398.md'>398</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 398: Quickly Exit with Non-Blocking Blocked Channels</td>
<td valign='top'><a href='/tcl/timeline?r=tip-398-impl'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/397.md'>397</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 397: Extensible Object Copying</td>
<td valign='top'><a href='https://core.tcl.tk/tcloo/timeline?r=development-rfe3485060'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/396.md'>396</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 396: Symmetric Coroutines, Multiple Args, and yieldto</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/395.md'>395</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 395: New &apos;string is entier&apos; Command</td>
<td valign='top'><a href='http://sites.google.com/site/josdecoster/Home/tip_string_is_entier.diff'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/394.md'>394</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 394: Platform-Independent Handling of Contemporary Mice</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/393.md'>393</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 393: Add -command Option to lsearch</td>
<td valign='top'><a href='http://sqlitestudio.pl/tcl/patches/tip-393-lsearch-command.patch'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/392.md'>392</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 392: Allow Bignums to be Disabled at Runtime on a Per-Interp Basis</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/391.md'>391</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 391: Support for UDP Sockets in Tcl</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/390.md'>390</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 390: A Logging API for Tcl</td>
<td></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/389.md'>389</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 389: Full support for Unicode 10.0 and later (part 1)</td>
<td valign='top'><a href='/tcl/timeline?r=tip-389'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/388.md'>388</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 388: Extending Unicode literals past the BMP</td>
<td valign='top'><a href='/tcl/timeline?r=tip-388-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/387.md'>387</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 387: Unified Yield Command Syntax</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/386.md'>386</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 386: Relocation of Tcl/Tk Source Control Repositories</td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/385.md'>385</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 385: Functional Traces On Variables</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/384.md'>384</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 384: Add File Alteration Monitoring to the Tcl Core</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/383.md'>383</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 383: Injecting Code into Suspended Coroutines</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/382.md'>382</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5.11</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 382: Let tk_getSaveFile ignore file overwrites</td>
<td valign='top'><a href='/tk/timeline?r=tip-382'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/381.md'>381</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 381: Call Chain Introspection and Control</td>
<td valign='top'><a href='https://core.tcl.tk/tcloo/timeline?r=development-next2'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/380.md'>380</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 380: TclOO Slots for Flexible Declarations</td>
<td valign='top'><a href='/tcl/tktview/3084339'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/379.md'>379</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 379: Add a Command for Delivering Events Without Tk</td>
<td valign='top'><a href='http://www.wjduquette.com/notifier/hook-0.1.zip'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/378.md'>378</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 378: Fixing the Performance of TIP 280</td>
<td valign='top'><a href='/tcl/tktview/3081184'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/377.md'>377</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 377: Portably Determining the Number of Processors in the System</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/376.md'>376</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 376: Bundle sqlite3 and tdbc::sqlite3 Packages</td>
<td valign='top'><a href='https://core.tcl.tk/tdbc/'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/375.md'>375</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 375: Symmetric Coroutines and Yieldto</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/374.md'>374</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 374: Stackless Vwait</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/373.md'>373</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 373: Improved Yielding Support for Coroutines</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/372.md'>372</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 372: Multi-argument Yield for Coroutines</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/371.md'>371</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 371: Improvements for the dict command</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/370.md'>370</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 370: Extend Tk&apos;s selection with a -time option</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/369.md'>369</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 369: Widget cargo command</td>
<td valign='top'><a href='/tk/tktview/3023578'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/368.md'>368</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 368: Listbox Justification Option</td>
<td></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/367.md'>367</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 367: A Command to Remove Elements from a List</td>
<td valign='top'><a href='/tcl/timeline?r=tip-367'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/366.md'>366</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 366: Variable Sized Indicators for Menubuttons</td>
<td valign='top'><a href='/tk/tktview/2996760'>Link</a></td>
</tr>
<tr class='state-draft type-project'>
<td valign='top'><a href='./tip/365.md'>365</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 365: Add Python Compatibility Mode</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/364.md'>364</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 364: Threading Support: Configuration and Package</td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/363.md'>363</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 363: Vector Math in the Tcl Core</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/362.md'>362</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 362: Simple 32 and 64 bit Registry Support</td>
<td valign='top'><a href='/tcl/tktview/2960976'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/361.md'>361</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 361: Releasing Channel Buffers</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/360.md'>360</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 360: Modernize X11 Menus</td>
<td valign='top'><a href='/tk/tktview/2920409'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/359.md'>359</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 359: Extended Window Manager Hint Support</td>
<td valign='top'><a href='/tk/tktview/2918731'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/358.md'>358</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 358: Suppress Empty List Element Generation from the Split Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/357.md'>357</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 357: Export TclLoadFile</td>
<td valign='top'><a href='/tcl/tktview/2891616'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/356.md'>356</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 356: NR-enabled Substitutions for Extensions</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/355.md'>355</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 355: Stop Fast Recycling of Channel Names on Unix</td>
<td valign='top'><a href='/tcl/tktview/2826430'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/354.md'>354</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 354: Minor Production-Driven TclOO Revisions</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/353.md'>353</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 353: NR-enabled Expressions for Extensions</td>
<td valign='top'><a href='/tcl/tktview/2823282'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/352.md'>352</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 352: Tcl Style Guide</td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/351.md'>351</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 351: Add Striding Support to lsearch</td>
<td valign='top'><a href='/tcl/timeline?r=tip-351'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/350.md'>350</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 350: Tcl Database Connectivity - Corrigenda</td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/349.md'>349</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 349: New &quot;-cargo&quot; option for every Tk widget</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/348.md'>348</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 348: Substituted &apos;errorstack&apos; / &apos;traceback&apos;</td>
<td valign='top'><a href='/tcl/tktview/2868499'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/347.md'>347</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 347: Align &apos;string is ...&apos; to Type-Conversion Functions in &apos;expr&apos;</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/346.md'>346</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 346: Error on Failed String Encodings</td>
<td valign='top'><a href='/tcl/tktview/1665628'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/345.md'>345</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 345: Kill the &apos;identity&apos; Encoding</td>
<td valign='top'><a href='/tcl/tktview/2564363'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/344.md'>344</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 344: Bring TCP_NODELAY and SO_KEEPALIVE to socket options</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/343.md'>343</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 343: A Binary Specifier for [format/scan]</td>
<td valign='top'><a href='/tcl/tktview/2368084'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/342.md'>342</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 342: Dict Get With Default</td>
<td valign='top'><a href='/tcl/timeline?r=tip-342'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/341.md'>341</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 341: Multiple &apos;dict filter&apos; Patterns</td>
<td valign='top'><a href='/tcl/tktview/2370575'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/340.md'>340</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 340: Const Qualification of Tcl_SetResult&apos;s Argument</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/339.md'>339</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 339: Case-Insensitive Package Names</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/338.md'>338</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 338: Embedder Access to Startup Scripts of *_Main()</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/337.md'>337</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 337: Make TclBackgroundException() Public</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/336.md'>336</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 336: Supported Access To interp-&gt;errorline</td>
<td valign='top'><a href='/tcl/timeline?r=tip-330-336'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/335.md'>335</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 335: An API for Detecting Active Interpreters</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/334.md'>334</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 334: Make &apos;lrepeat&apos; Accept Zero as a Count</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/333.md'>333</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 333: New Variable and Namespace Resolving Interface</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/332.md'>332</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 332: Half-Close for Bidirectional Channels</td>
<td valign='top'><a href='/tcl/tktview/219159'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/331.md'>331</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 331: Allow [lset] to Extend Lists</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/330.md'>330</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 330: Eliminate interp-&gt;result from the Public Headers</td>
<td valign='top'><a href='/tcl/timeline?r=tip-330-336'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/329.md'>329</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 329: Try/Catch/Finally syntax</td>
<td valign='top'><a href='http://www.crypt.co.za/pub/try-1.tcl'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/328.md'>328</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 328: Coroutines</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/327.md'>327</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 327: Proper Tailcalls</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/326.md'>326</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 326: Add -stride Option to lsort</td>
<td valign='top'><a href='/tcl/tktview/2082681'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/325.md'>325</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 325: System Tray Access</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/324.md'>324</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 324: A Standard Dialog For Font Selection</td>
<td valign='top'><a href='/tk/tktview/1477426'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/323.md'>323</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 323: Do Nothing Gracefully</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/322.md'>322</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 322: Publish the NRE API</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/321.md'>321</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 321: Add a [tk busy] Command</td>
<td valign='top'><a href='/tk/tktview/1997907'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/320.md'>320</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 320: Improved Variable Handling in the Core Object System</td>
<td valign='top'><a href='/tcl/tktview/2005460'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/319.md'>319</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 319: Implement Backwards Compatibility for ttk Themed Widgets in tk Widgets</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/318.md'>318</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 318: Extend Default Whitespace in &apos;string trim&apos; Beyond ASCII</td>
<td valign='top'><a href='/tcl/timeline?r=tip-318-update'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/317.md'>317</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 317: Extend binary Ensemble with Binary Encodings</td>
<td valign='top'><a href='/tcl/tktview/1956530'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/316.md'>316</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 316: Portable Access Functions for Stat Buffers</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/315.md'>315</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 315: Add pathSeparator to tcl_platform Array</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/314.md'>314</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 314: Ensembles with Parameters</td>
<td valign='top'><a href='/tcl/tktview/1901783'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/313.md'>313</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 313: Inexact Searching in Sorted List</td>
<td valign='top'><a href='/tcl/tktview/1894241'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/312.md'>312</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 312: Add More Link Types</td>
<td valign='top'><a href='/tcl/tktview/1992824'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/311.md'>311</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 311: Tcl/Tk 8.6 Release Calendar</td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/310.md'>310</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 310: Add a New Pseudo-Random Number Generator</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/309.md'>309</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 309: Expose the Expression Parsing</td>
<td></td>
</tr>
<tr class='state-obsoleted type-informational'>
<td valign='top'><a href='./tip/308.md'>308</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 308: Tcl Database Connectivity (TDBC)</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/307.md'>307</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 307: Make TclTransferResult() Public</td>
<td valign='top'><a href='/tcl/tktview/1723738'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/306.md'>306</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 306: Auto-Naming Widgets</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/305.md'>305</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 305: ANSI Escape Sequence Support for Windows&apos;s Console Channel Driver</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/304.md'>304</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 304: A Standalone [chan pipe] Primitive for Advanced Child IPC</td>
<td valign='top'><a href='/tcl/tktview/1978495'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/303.md'>303</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 303: Enhance &apos;llength&apos; Command to Support Nested Lists</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/302.md'>302</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 302: Fix &quot;after&quot;&apos;s Sensitivity To Adjustments Of System Clock</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/301.md'>301</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 301: Split Bidirectional Channels For Half-Close</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/300.md'>300</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 300: Examine Glyph Substitution in the &apos;font actual&apos; Command</td>
<td valign='top'><a href='/tk/tktview/1602955'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/299.md'>299</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 299: Add isqrt() Math Function</td>
<td valign='top'><a href='/tk/tktview/1602534'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/298.md'>298</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 298: Revise Shared Value Rules for Tcl_GetBignumAndClearObj</td>
<td valign='top'><a href='/tcl/tktview/1601243'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/297.md'>297</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 297: Integer Type Introspection and Conversion</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/296.md'>296</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 296: Enhanced Syntax for Pair-Wise Indices</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/295.md'>295</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 295: Enhance Arguments to lrange</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/294.md'>294</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 294: The &quot;entier&quot; Function: It&apos;s Spelt &quot;entire&quot;</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/293.md'>293</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 293: Argument Expansion with Leading {*}</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/292.md'>292</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 292: Allow Unquoted Strings in Expressions</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/291.md'>291</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 291: Add the &apos;platform&apos; Package to Tcl</td>
<td valign='top'><a href='/tcl/tktview/1600701'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/290.md'>290</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 290: Registration of Custom Error Handler Scripts</td>
<td valign='top'><a href='/tcl/tktview/1587317'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/289.md'>289</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 289: Revision of [lrepeat] Argument Order</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/288.md'>288</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 288: Allow &quot;args&quot; Anywhere in Procedure Formal Arguments</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/287.md'>287</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 287: Add a Commands for Determining Size of Buffered Data</td>
<td valign='top'><a href='/tcl/tktview/1586860'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/286.md'>286</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 286: Add &apos;xposition&apos; Command to Menu Widgets</td>
<td valign='top'><a href='/tk/tktview/1152376'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/285.md'>285</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 285: Script Cancellation with [interp cancel] and Tcl_CancelEval</td>
<td valign='top'><a href='/tcl/tktview/1499394'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/284.md'>284</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 284: New &apos;invoke&apos; and &apos;namespace invoke&apos; Commands</td>
<td valign='top'><a href='/tcl/tktview/1577324'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/283.md'>283</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 283: Modify Ensemble Command Resolution Behaviour</td>
<td valign='top'><a href='/tcl/tktview/1577282'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/282.md'>282</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 282: Enhanced Expression Syntax</td>
<td valign='top'><a href='/tcl/tktview/1969722'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/281.md'>281</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 281: Improvements in System Error Handling</td>
<td valign='top'><a href='http://iocpsock.cvs.sourceforge.net/iocpsock/iocpsock/tclWinError.c?revision=HEAD&view=markup'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/280.md'>280</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 280: Add Full Stack Trace Capability With Location Introspection</td>
<td valign='top'><a href='/tcl/tktview/1571568'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/279.md'>279</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 279: Adding an Extensible Object System to the Core</td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/278.md'>278</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 278: Fix Variable Name Resolution Quirks</td>
<td valign='top'><a href='/tcl/timeline?r=tip-278'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/277.md'>277</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 277: Create Namespaces as Needed</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/276.md'>276</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 276: Specify and Unify Variable Linking Commands</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/275.md'>275</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 275: Support Unsigned Values in binary Command</td>
<td valign='top'><a href='/tcl/tktview/1565751'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/274.md'>274</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 274: Right-Associativity for the Exponentiation Operator</td>
<td valign='top'><a href='/tcl/tktview/1556802'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/273.md'>273</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 273: Add Tcl_Expr... Support to Tcl_Get... Functions</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/272.md'>272</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 272: String and List Reversal Operations</td>
<td valign='top'><a href='/tcl/tktview/1545151'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/271.md'>271</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 271: Windows-Style Open and Save File Dialog on Unix</td>
<td valign='top'><a href='/tk/tktview/1520742'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/270.md'>270</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 270: Utility C Routines for String Formatting</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/269.md'>269</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 269: Add &apos;string is list&apos; to the &apos;string is&apos; Subcommand</td>
<td valign='top'><a href='/tcl/tktview/1491459'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/268.md'>268</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 268: Enhance &apos;package&apos; Version Handling</td>
<td valign='top'><a href='/tcl/tktview/1520767'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/267.md'>267</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 267: Allow &apos;exec&apos; to Ignore Stderr</td>
<td valign='top'><a href='/tcl/tktview/1476191'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/266.md'>266</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 266: Numbers are Commands</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/265.md'>265</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 265: A Convenient C-side Command Option Parser for Tcl</td>
<td valign='top'><a href='/tcl/tktview/1446696'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/264.md'>264</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 264: Add Function to Retrieve the Interpreter of a Window</td>
<td></td>
</tr>
<tr class='state-draft type-project'>
<td valign='top'><a href='./tip/263.md'>263</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.2</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 263: Quantum Tcl</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/262.md'>262</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 262: Background Images for Frames</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/261.md'>261</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 261: Return Imported Commands from [namespace import]</td>
<td valign='top'><a href='/tcl/tktview/1437008'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/260.md'>260</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 260: Add Underline Option to Canvas Text Items</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/259.md'>259</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 259: Making &apos;exec&apos; Optionally Binary Safe</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/258.md'>258</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 258: Enhanced Interface for Encodings</td>
<td valign='top'><a href='/tcl/tktview/1413934'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/257.md'>257</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 257: Object Orientation for Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=tip-257-implementation-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/256.md'>256</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 256: Implement Tabular and Wordprocessor Style Tabbing</td>
<td valign='top'><a href='/tk/tktview/1247835'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/255.md'>255</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 255: Add &apos;min&apos; and &apos;max&apos; [expr] Functions</td>
<td valign='top'><a href='/tcl/tktview/1309020'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/254.md'>254</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 254: New Types for Tcl_LinkVar</td>
<td valign='top'><a href='/tcl/tktview/1242844'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/253.md'>253</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 253: Consolidate Package-Related Commands</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/252.md'>252</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 252: Add New &apos;string&apos; Command Options</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/251.md'>251</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 251: Enhance the &apos;list&apos; Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/250.md'>250</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 250: Efficient Access to Namespace Variables</td>
<td valign='top'><a href='/tcl/tktview/1275435'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/249.md'>249</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 249: Unification of Tcl&apos;s Parsing of Numbers</td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/248.md'>248</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 248: Integrate Tile into Tk as Ttk</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/247.md'>247</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 247: Tcl/Tk Engineering Manual</td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/246.md'>246</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 246: Unify Pattern Matching</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/245.md'>245</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 245: Discover User Inactivity Time</td>
<td valign='top'><a href='/tk/tktview/1185731'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/244.md'>244</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 244: PNG Photo Image Support for Tk</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/243.md'>243</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 243: Supply Find Dialog for the Text Widget</td>
<td valign='top'><a href='/tk/tktview/1167420'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/242.md'>242</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 242: Preselect Filter on tk_get*File Dialogs</td>
<td valign='top'><a href='/tk/tktview/1156388'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/241.md'>241</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 241: Case-Insensitive Switches and List Searching and Sorting</td>
<td valign='top'><a href='/tcl/tktview/1152746'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/240.md'>240</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 240: An Ensemble Command to Manage Processes</td>
<td valign='top'><a href='/tcl/tktview/1315115'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/239.md'>239</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 239: Enhance the &apos;load&apos; Command</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/238.md'>238</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 238: Fire Event when Widget Created</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/237.md'>237</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 237: Arbitrary-Precision Integers for Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=kennykb-numerics-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/236.md'>236</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 236: Absolute Positioning of Canvas Items</td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/canvmoveto.patch.gz'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/235.md'>235</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 235: Exposing a C API for Ensembles</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/234.md'>234</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 234: Add Support For Zlib Compression</td>
<td valign='top'><a href='http://svn.scheffers.net/zlib'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/233.md'>233</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 233: Virtualization of Tcl&apos;s Sense of Time</td>
<td valign='top'><a href='/tcl/tktview/1073863'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/232.md'>232</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 232: Creating New Math Functions for the &apos;expr&apos; Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/231.md'>231</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 231: Support for [wm attributes] on X11</td>
<td valign='top'><a href='/tk/tktview/1062022'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/230.md'>230</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 230: Tcl Channel Transformation Reflection API</td>
<td valign='top'><a href='/tcl/tktview/1163274'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/229.md'>229</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 229: Scripted Control of Name Resolution in Namespaces</td>
<td valign='top'><a href='/tcl/tktview/1159942'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/228.md'>228</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 228: Tcl Filesystem Reflection API</td>
<td valign='top'><a href='http://sourceforge.net/projects/tclvfs/'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/227.md'>227</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 227: Interface to Get and Set the Return Options of an Interpreter</td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/226.md'>226</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 226: Interface to Save and Restore Interpreter State</td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/225.md'>225</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 225: Arithmetic Series with Optimized Space Complexity</td>
<td valign='top'><a href='/tcl/tktview/1052584'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/224.md'>224</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 224: Add New [array] Subcommand &apos;value&apos;</td>
<td valign='top'><a href='/tcl/timeline?r=tip-224'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/223.md'>223</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 223: Full-Screen Toplevel Support for Tk</td>
<td valign='top'><a href='/tk/tktview/1032982'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/222.md'>222</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 222: Add [wm attributes -alpha] Attribute on Windows</td>
<td valign='top'><a href='/tk/tktview/892194'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/221.md'>221</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 221: Allow Background Error Handlers to Accept Return Options</td>
<td valign='top'><a href='/tcl/tktview/1060579'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/220.md'>220</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 220: Escalate Privileges in VFS Close Callback</td>
<td valign='top'><a href='/tcl/tktview/1057093'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/219.md'>219</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 219: Tcl Channel Reflection API</td>
<td valign='top'><a href='/tcl/tktview/1025294'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/218.md'>218</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 218: Tcl Channel Driver Thread State Actions</td>
<td valign='top'><a href='/tcl/tktview/875701'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/217.md'>217</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 217: Getting Sorted Indices out of Lsort</td>
<td valign='top'><a href='/tcl/tktview/1017532'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/216.md'>216</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 216: Handling Command-Line Options in Tclsh and Wish</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/215.md'>215</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 215: Make [incr] Auto-Initialize Undefined Variables</td>
<td valign='top'><a href='/tcl/tktview/1413115'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/214.md'>214</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 214: Add New Object Introspection Command</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/213.md'>213</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 213: A Standard Dialog for Font Selection</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/212.md'>212</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 212: Temporarily Opening out a Dictionary</td>
<td valign='top'><a href='/tcl/tktview/1008768'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/211.md'>211</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 211: Add Full Stack Trace Capability</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/210.md'>210</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 210: Add &apos;tempfile&apos; Subcommand to &apos;file&apos;</td>
<td valign='top'><a href='/tcl/tktview/999162'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/209.md'>209</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 209: Add [clock milliseconds], and [clock microseconds]</td>
<td valign='top'><a href='/tcl/tktview/991742'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/208.md'>208</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 208: Add a &apos;chan&apos; Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/207.md'>207</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 207: Add a -namespace Option to [interp invokehidden]</td>
<td valign='top'><a href='/tcl/tktview/981841'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/206.md'>206</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 206: Add an [ftruncate] Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/205.md'>205</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 205: Use pkgconfig Database to Register Xft Support</td>
<td valign='top'><a href='/tk/tktview/976520'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/204.md'>204</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 204: Virtual Events for Keyboard Traversal</td>
<td valign='top'><a href='/tk/tktview/976928'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/203.md'>203</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 203: Create tclConfig.sh-Equivalent in Tcl</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/202.md'>202</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 202: Add 2&gt;@1 Special Case to [open] and [exec]</td>
<td valign='top'><a href='/tcl/tktview/957132'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/201.md'>201</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 201: Add &apos;in&apos; Operator to [expr]</td>
<td valign='top'><a href='/tcl/tktview/1031507'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/200.md'>200</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 200: Listing the Values in an Array</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/199.md'>199</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 199: Specification of Alternatives to .wishrc/.tclshrc</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/198.md'>198</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 198: Image Command XPM Extension</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/197.md'>197</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 197: Unfocussed Text Widget Cursor Control</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/196.md'>196</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 196: Tcl Commands as Values</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/195.md'>195</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 195: A Unique Prefix Handling Command</td>
<td valign='top'><a href='/tcl/tktview/1040206'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/194.md'>194</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 194: Procedures as Values via &apos;&apos;&apos;apply&apos;&apos;&apos;</td>
<td valign='top'><a href='/tcl/tktview/944803'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/193.md'>193</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 193: Simple Syntax Help System</td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/192.md'>192</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 192: Lazy Lists</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/191.md'>191</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 191: Managing Tcl Packages and Modules in a Multi-Version Environment</td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/190.md'>190</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 190: Implementation Choices for Tcl Modules</td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/189.md'>189</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 189: Tcl Modules</td>
<td valign='top'><a href='/tcl/tktview/942881'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/188.md'>188</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 188: Add &apos;string is wideinteger&apos; to the &apos;string is&apos; Subcommand</td>
<td valign='top'><a href='/tcl/tktview/940915'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/187.md'>187</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 187: Procedures as Values</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/186.md'>186</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 186: Expose the Type and Modified-State of Widget Options</td>
<td valign='top'><a href='http://pdqi.com/configure.diff.gz'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/185.md'>185</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 185: Null Handling</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/184.md'>184</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 184: Avoid Creating Unusable Variables</td>
<td valign='top'><a href='/tcl/tktview/600812'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/183.md'>183</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 183: Add a Binary Flag to [open]</td>
<td valign='top'><a href='/tcl/tktview/577093'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/182.md'>182</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 182: Add [expr bool] Math Function</td>
<td valign='top'><a href='/tcl/tktview/1165062'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/181.md'>181</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 181: Add a [namespace unknown] Command</td>
<td valign='top'><a href='/tcl/tktview/958222'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/180.md'>180</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 180: Add a Megawidget Support Core Package</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/179.md'>179</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 179: Add -hide Option to panedwindow Widget</td>
<td valign='top'><a href='ftp://ftp.model.com/pub/tcl/pw_hide_TIP.tgz'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/178.md'>178</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 178: [info pid] and [info tid] Subcommands</td>
<td valign='top'><a href='/tcl/tktview/920731ffffffffffffff'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/177.md'>177</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 177: Add -stretch Option to panedwindow Widget</td>
<td valign='top'><a href='ftp://ftp.model.com/pub/tcl/pw_stretch_TIP.tgz'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/176.md'>176</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 176: Add String Index Values</td>
<td valign='top'><a href='/tcl/tktview/1165695'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/175.md'>175</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 175: Add an -async Option to [open]</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/174.md'>174</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 174: Math Operators as Commands</td>
<td valign='top'><a href='/tcl/tktview/1578137'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/173.md'>173</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 173: Internationalisation and Refactoring of the &apos;clock&apos; Command</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/172.md'>172</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 172: Improve UNIX Tk Look and Feel</td>
<td></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/171.md'>171</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 171: Change Default &lt;MouseWheel&gt; Bindings Behavior</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/170.md'>170</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 170: Better Support for Nested Lists</td>
<td valign='top'><a href='http://nac.sf.net/'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/169.md'>169</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 169: Add Peer Text Widgets</td>
<td valign='top'><a href='/tk/tktview/994629'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/168.md'>168</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 168: Cubic Bezier Curves on the Canvas</td>
<td valign='top'><a href='/tk/tktview/886240'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/167.md'>167</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 167: Add a New Option for Context Help for Windows</td>
<td valign='top'><a href='/tk/tktview/845248ffffffffffffff'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/166.md'>166</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 166: Reading and Writing the Photo Image Alpha Channel</td>
<td valign='top'><a href='/tk/timeline?r=tip-166'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/165.md'>165</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 165: A User-Data Field for Virtual Events</td>
<td valign='top'><a href='/tk/tktview/1008975'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/164.md'>164</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 164: Add Rotate Subcommand to the Canvas Widget</td>
<td valign='top'><a href='/tk/timeline?r=tip-164'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/163.md'>163</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 163: A [dict merge] Subcommand</td>
<td valign='top'><a href='/tcl/tktview/745851'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/162.md'>162</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 162: IPv6 Sockets for Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=rmax-ipv6-branch'>Link</a></td>
</tr>
<tr class='state-final type-project version-87'>
<td valign='top'><a href='./tip/161.md'>161</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 161: Change Default for Menu&apos;s -tearoff Option to False</td>
<td valign='top'><a href='/tk/timeline?r=tip-161'>Link</a></td>
</tr>
<tr class='state-voting type-project'>
<td valign='top'><a href='./tip/160.md'>160</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Voting</td>
<td valign='top'># TIP 160: Improvements to Terminal and Serial Channel Handling</td>
<td valign='top'><a href='/tcl/timeline?r=tip-160'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/159.md'>159</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 159: Extending Tk &apos;wm&apos; Command to Support Coloured Icons</td>
<td valign='top'><a href='/tk/tktview/815751'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/158.md'>158</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 158: Distinguish the two &apos;Enter&apos; keys on Windows</td>
<td valign='top'><a href='/tk/tktview/797404'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/157.md'>157</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 157: Argument Expansion with Leading {expand}</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/156.md'>156</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 156: Language-Neutral Root Locale for Msgcat</td>
<td valign='top'><a href='/tcl/tktview/809825'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/155.md'>155</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 155: Fix Some of the Text Widget&apos;s Limitations</td>
<td valign='top'><a href='/tk/tktview/791292'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/154.md'>154</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 154: Add Named Colors to Tk</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/153.md'>153</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 153: Enhancing the [winfo toplevel] Command</td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/computer/winfotop.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/152.md'>152</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 152: New -detail Option for tk_messageBox</td>
<td valign='top'><a href='http://hem.fyristorg.com/matben/download/MovableAlerts.dmg'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/151.md'>151</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 151: Remove -e: Command Line Option from tclsh and wish</td>
<td></td>
</tr>
<tr class='state-deferred type-project'>
<td valign='top'><a href='./tip/150.md'>150</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top'># TIP 150: Implement the Tk send Command for Windows</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/149.md'>149</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 149: Allow &quot;enabled&quot; as Synonym for &quot;normal&quot; in -state Option</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/148.md'>148</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 148: Correct [list]-Quoting of the &apos;#&apos; Character</td>
<td valign='top'><a href='/tcl/tktview/489537'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/147.md'>147</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 147: Make Grid&apos;s Column/Row Configure Easier</td>
<td valign='top'><a href='/tk/tktview/659218'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/146.md'>146</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 146: Add Overall Anchoring to the Grid Geometry Manager</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/145.md'>145</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 145: Enhanced Tk Font Handling</td>
<td valign='top'><a href='/tk/tktview/780617'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/144.md'>144</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 144: Argument Expansion Syntax</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/143.md'>143</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 143: An Interpreter Resource Limiting Framework</td>
<td valign='top'><a href='/tcl/tktview/926771'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/142.md'>142</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 142: Search Path Variable to Lookup Command Names in Namespaces</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/141.md'>141</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 141: Multiple Initial-Files in [tk_getOpenFile]</td>
<td valign='top'><a href='/tk/tktview/657656'>Link</a></td>
</tr>
<tr class='state-deferred type-project'>
<td valign='top'><a href='./tip/140.md'>140</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top'># TIP 140: Tracing Namespace Modifications</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/139.md'>139</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 139: Publish Part of Tcl&apos;s Namespace API</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/138.md'>138</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 138: New TCL_HASH_KEY_SYSTEM_HASH option for Tcl hash tables</td>
<td valign='top'><a href='/tcl/tktview/731356'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/137.md'>137</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 137: Specifying Script Encodings for [source] and tclsh</td>
<td valign='top'><a href='/tcl/tktview/742683'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/136.md'>136</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 136: Large List Initialisation</td>
<td valign='top'><a href='http://homepage.ntlworld.com/whiteowl/tcl/tcl843-lrepeat.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/135.md'>135</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 135: Change &apos;dde servername -exact&apos; Option to -force</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/134.md'>134</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 134: Subsystem Per-Thread Data Interfaces</td>
<td></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/133.md'>133</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 133: Extending [expr] Operators</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/132.md'>132</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 132: Revised Floating-Point Conversions in Tcl</td>
<td valign='top'><a href='/tcl/timeline?r=kennykb-numerics-branch'>Link</a></td>
</tr>
<tr class='state-draft type-project'>
<td valign='top'><a href='./tip/131.md'>131</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 131: Read My Mind and Do What I Mean</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/130.md'>130</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 130: Unique DDE server names.</td>
<td valign='top'><a href='/tcl/tktview/690354'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/129.md'>129</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 129: New Format Codes for the [binary] Command</td>
<td valign='top'><a href='/tcl/tktview/858211'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/128.md'>128</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 128: Ability to Install a Custom Memory Allocator</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/127.md'>127</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 127: Add an -index Option to [lsearch]</td>
<td valign='top'><a href='/tcl/tktview/693836'>Link</a></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/126.md'>126</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 126: Rich Strings for Representation Persistence</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/125.md'>125</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 125: Converting between Frame and Toplevel Windows</td>
<td valign='top'><a href='/tk/tktview/998125'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/124.md'>124</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 124: High-Resolution Absolute Time Values From [clock]</td>
<td valign='top'><a href='/tcl/tktview/656997'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/123.md'>123</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 123: Adding an Exponentiation Operator to the [expr] Command</td>
<td valign='top'><a href='/tcl/tktview/655176'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/122.md'>122</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 122: Use tcl_{non,}wordchars Throughout Tcl/Tk</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/121.md'>121</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 121: Controlled Application Shutdown via Tcl_Exit</td>
<td valign='top'><a href='/tcl/tktview/649313'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/120.md'>120</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 120: Restricted DDE Services</td>
<td valign='top'><a href='/tcl/tktview/649859'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/119.md'>119</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 119: Angled Text on a Canvas</td>
<td valign='top'><a href='/tk/tktview/1611359'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/118.md'>118</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 118: Enhance [file attributes] and [file copy] on Mac OS X &amp; BSD</td>
<td valign='top'><a href='/tcl/tktview/626360'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/117.md'>117</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 117: Object Type Introspection</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/116.md'>116</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 116: More Safety for Large Images</td>
<td valign='top'><a href='/tk/tktview/646382'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/115.md'>115</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 115: Making Tcl Truly 64-Bit Ready</td>
<td></td>
</tr>
<tr class='state-final type-project version-90'>
<td valign='top'><a href='./tip/114.md'>114</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 114: Eliminate Octal Parsing of Leading Zero Integer Strings</td>
<td valign='top'><a href='/tcl/timeline?r=tip-114'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/113.md'>113</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 113: Multi-Line Searches in the Text Widget</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/112.md'>112</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 112: Ensembles are Namespaces are Commands</td>
<td valign='top'><a href='/tcl/tktview/786509'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/111.md'>111</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 111: Dictionary Values and Manipulators</td>
<td valign='top'><a href='/tcl/tktview/654893'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/110.md'>110</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 110: Add a Tristate Mode to the Checkbutton and Radiobutton</td>
<td valign='top'><a href='/tk/tktview/863271'>Link</a></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/109.md'>109</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 109: New Look for Checkbutton and Radiobutton on Unix</td>
<td valign='top'><a href='/tk/tktview/776545'>Link</a></td>
</tr>
<tr class='state-final type-informational'>
<td valign='top'><a href='./tip/108.md'>108</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 108: Summary of Changes to Generic Tcl/Tk Code to Enable Mac OS X Port</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/107.md'>107</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 107: Fix the 2-second &quot;raise delay&quot; in Tk</td>
<td valign='top'><a href='/tk/tktview/601518'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/106.md'>106</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 106: Add Encoding Abilities to the [dde] Command</td>
<td valign='top'><a href='/tcl/timeline?r=tip-106-impl'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/105.md'>105</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 105: Add Prefix Matching for Switch</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/104.md'>104</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 104: Generalization of the Tk Undo Subsystem</td>
<td valign='top'><a href='/tk/tktview/554763'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/103.md'>103</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 103: Argument Expansion Command</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/102.md'>102</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 102: Change [trace list] to [trace info]</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/101.md'>101</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 101: Export Tcltest Configuration</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/100.md'>100</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 100: Add Support for Unloading Dynamic Libraries Loaded with [load]</td>
<td valign='top'><a href='/tcl/tktview/823486'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/99.md'>99</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 99: Add &apos;file link&apos; to Tcl</td>
<td valign='top'><a href='/tcl/tktview/562970'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/98.md'>98</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 98: Adding Transparency Compositing Rules to Photo Images</td>
<td valign='top'><a href='/tk/tktview/566765'>Link</a></td>
</tr>
<tr class='state-final type-project version-86'>
<td valign='top'><a href='./tip/97.md'>97</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 97: Moving Vertices of Canvas Items</td>
<td valign='top'><a href='/tk/tktview/2157629'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/96.md'>96</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 96: Add [tk caret] Command and Tk_SetCaretPos API</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/95.md'>95</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 95: Add [wm attributes] Command</td>
<td valign='top'><a href='/tk/tktview/553926'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/94.md'>94</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 94: Add Listbox -activestyle Option</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/93.md'>93</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 93: Get/Delete Enhancement for the Tk Text Widget</td>
<td valign='top'><a href='http://faqchest.dynhost.com/prgm/ptk-l/ptk-01/ptk-0112/ptk-011201/ptk01122716_24437.html'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/92.md'>92</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 92: Move Package Load Decisions to Application Developer</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/91.md'>91</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 91: Backward Compatibility for Channel Types with 32-bit SeekProcs</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/90.md'>90</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 90: Enable [return -code] in Control Structure Procs</td>
<td valign='top'><a href='/tcl/tktview/531640'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/89.md'>89</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 89: Try/Catch Exception Handling in the Core</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/88.md'>88</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 88: Extend Tcl Process Id Control via &apos;pid&apos;</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/87.md'>87</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 87: Allow Tcl Access to the Recursion Limit</td>
<td valign='top'><a href='/tcl/tktview/522849'>Link</a></td>
</tr>
<tr class='state-draft type-project version-87'>
<td valign='top'><a href='./tip/86.md'>86</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.7</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 86: Improved Debugger Support</td>
<td valign='top'><a href='http://pdqi.com/download/tclline-8.4.9.diff.gz'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/85.md'>85</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 85: Custom Comparisons in Tcltest</td>
<td valign='top'><a href='/tcl/tktview/521362'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/84.md'>84</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 84: Add control for mouse movement filtering</td>
<td valign='top'><a href='/tk/tktview/564642'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/83.md'>83</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 83: Augment Tcl_EvalFile with Tcl_EvalChannel and Tcl_EvalUrl</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/82.md'>82</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 82: Add -offrelief Option to Checkbutton and Radiobutton</td>
<td></td>
</tr>
<tr class='state-withdrawn type-process'>
<td valign='top'><a href='./tip/81.md'>81</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 81: [incr Tcl] Functional Areas for Maintainer Assignments</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/80.md'>80</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 80: Additional Options for &apos;lsearch&apos;</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/79.md'>79</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 79: Add Deletion Callback to Tcl_CreateObjTrace</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/78.md'>78</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 78: TEA 2.0 Definitions</td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/77.md'>77</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 77: Support for Nested Paired Item Lists</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/76.md'>76</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 76: Make &apos;regsub&apos; Return a String</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/75.md'>75</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 75: Refer to Sub-RegExps Inside &apos;switch -regexp&apos; Bodies</td>
<td valign='top'><a href='/tcl/tktview/848578'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/74.md'>74</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 74: wm stackorder command</td>
<td valign='top'><a href='/tk/tktview/481148'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/73.md'>73</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 73: Export Tcl_GetTime in the Public API</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/72.md'>72</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 72: 64-Bit Value Support for Tcl on 32-Bit Platforms</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/71.md'>71</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 71: Tk Bitmap Image Improvements</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/70.md'>70</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 70: A Relational Switch Control Structure</td>
<td></td>
</tr>
<tr class='state-draft type-project version-90'>
<td valign='top'><a href='./tip/69.md'>69</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 69: Improvements for the Tcl Hash Table</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/68.md'>68</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 68: Dynamic Trace Result Handling</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/67.md'>67</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 67: Allow Subclassing of tk_getOpenFile, tk_getSaveFile on UNIX</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/66.md'>66</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 66: Stand-alone and Embedded Tcl/Tk Applications</td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/65.md'>65</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 65: Enhanced [info args]</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/64.md'>64</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 64: Improvements to Windows Font Handling</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/63.md'>63</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 63: Add -compound Option to Menu Entries</td>
<td valign='top'><a href='ftp://ftp.ucsd.edu/pub/alpha/tcl/compoundmenu.diff'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/62.md'>62</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 62: Add Support for Command Tracing</td>
<td valign='top'><a href='http://www.employees.org/~hlavana/tcl/'>Link</a></td>
</tr>
<tr class='state-deferred type-project'>
<td valign='top'><a href='./tip/61.md'>61</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top'># TIP 61: Make TK_NO_SECURITY Run-Time Switchable</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/60.md'>60</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.6</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 60: EXTERN Macro Change to Support a Wider Set of Attributes</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/59.md'>59</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 59: Embed Build Information in Tcl Binary Library</td>
<td valign='top'><a href='/tcl/tktview/507083'>Link</a></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/58.md'>58</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 58: Extend [set] to Assign Multiple Values to Multiple Variables</td>
<td></td>
</tr>
<tr class='state-final type-project version-85'>
<td valign='top'><a href='./tip/57.md'>57</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 57: Move TclX&apos;s [lassign] into the Tcl Core</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/56.md'>56</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 56: Standardize Call Interface to Tcl_Eval* Functions</td>
<td valign='top'><a href='/tcl/tktview/455151'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/55.md'>55</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 55: Package Format for Tcl Extensions</td>
</tr>
<tr class='state-withdrawn type-process'>
<td valign='top'><a href='./tip/54.md'>54</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 54: Using PURLs to Unite the Tcl Webspace</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/53.md'>53</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 53: Addition of &apos;assert&apos; Command</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/52.md'>52</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 52: Hierarchical Namespace Lookup of Commands and Variables</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/51.md'>51</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 51: Native Menubutton on Macintosh</td>
<td></td>
</tr>
<tr class='state-final type-informational'>
<td valign='top'><a href='./tip/50.md'>50</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 50: Bundle [incr Tcl] with the Core Tcl distribution</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/49.md'>49</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 49: I/O Subsystem: Add API Tcl_OutputBuffered(chan)</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/48.md'>48</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 48: Tk Widget Styling Support</td>
<td valign='top'><a href='http://www.purl.org/NET/bonnet/pub/style.patch'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/47.md'>47</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 47: Modifying Tk to Allow Writing X Window managers</td>
<td valign='top'><a href='http://www.eecs.umich.edu/~mckay/computer/wmenablers.84a3.patch.gz'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/46.md'>46</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 46: Consistent Overlap Behavior of Area-Defining Canvas Items</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/45.md'>45</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4b1</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 45: Empty index lists for [lindex] and [lset]</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/44.md'>44</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 44: Move Tk&apos;s Private Commands and Variables into ::tk Namespace</td>
<td valign='top'><a href='/tk/tktview/220936'>Link</a></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/43.md'>43</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 43: How to be a TIP Editor</td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/42.md'>42</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 42: Add New Standard Tk Option: -clientdata</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/41.md'>41</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 41: Paned Window Tk Widget</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/40.md'>40</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.0</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 40: Documentation Generator for Tcl Scripts</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/39.md'>39</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 39: Add New Standard Tk Option: -component</td>
<td></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/38.md'>38</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 38: Add Support for Default Bindtags</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/37.md'>37</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 37: Uniform Rows and Columns in Grid</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/36.md'>36</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 36: Library Access to &apos;Subst&apos; Functionality</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/35.md'>35</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 35: Enhanced Support for Serial Communications</td>
<td valign='top'><a href='/tcl/tktview/438509'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/34.md'>34</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 34: Modernize TEA Build System</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/33.md'>33</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 33: Add &apos;lset&apos; Command to Assign to List Elements.</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/32.md'>32</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 32: Add Tcl_Obj-enabled counterpart to Tcl_CreateTrace</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/31.md'>31</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 31: CVS tags in the Tcl and Tk repositories</td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/30.md'>30</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 30: Tk Toolkit Maintainer Assignments</td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/29.md'>29</a></td>
<td valign='top'>Project</td>
<td valign='top'>9.0</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 29: Allow array syntax for Tcl lists</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/28.md'>28</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 28: How to be a good maintainer for Tcl/Tk</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/27.md'>27</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 27: CONST Qualification on Pointers in Tcl API&apos;s</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/26.md'>26</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 26: Enhancements for the Tk Text Widget</td>
<td valign='top'><a href='https://core.tcl.tk/tips/raw/assets/26.patch'>Link</a></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/25.md'>25</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 25: Native tk_messageBox  on Macintosh</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/24.md'>24</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 24: Tcl Maintainer Assignments</td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/23.md'>23</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 23: Tk Toolkit Functional Areas for Maintainer Assignments</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/22.md'>22</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 22: Multiple Index Arguments to lindex</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/21.md'>21</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 21: Asymmetric Padding in the Pack and Grid Geometry Managers</td>
<td valign='top'><a href='http://www.hwaci.com/sw/asym_pad_patch_2.txt'>Link</a></td>
</tr>
<tr class='state-deferred type-project'>
<td valign='top'><a href='./tip/20.md'>20</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.5</td>
<td valign='top'>Deferred</td>
<td valign='top'># TIP 20: Add C Locale-Exact CType Functions</td>
<td></td>
</tr>
<tr class='state-obsoleted type-project'>
<td valign='top'><a href='./tip/19.md'>19</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4a2</td>
<td valign='top'>Obsoleted</td>
<td valign='top'># TIP 19: Add a Text Changed Flag to Tk&apos;s Text Widget</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/18.md'>18</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 18: Add Labels to Frames</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/17.md'>17</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 17: Redo Tcl&apos;s filesystem</td>
<td></td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/16.md'>16</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 16: Tcl Functional Areas for Maintainer Assignments</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/15.md'>15</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 15: Functions to List and Detail Math Functions</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/14.md'>14</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 14: Access to Tk Photo Image Transparency</td>
<td valign='top'><a href='http://www.cs.man.ac.uk/~fellowsd/tcl/validRegion.patch'>Link</a></td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/13.md'>13</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 13: Web Service for Drafting and Archiving TIPs</td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/12.md'>12</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 12: The &quot;Batteries Included&quot; Distribution</td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/11.md'>11</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 11: Tk Menubutton Enhancement: -compound option for menubutton</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/10.md'>10</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 10: Tcl I/O Enhancement: Thread-Aware Channels</td>
<td valign='top'><a href='https://core.tcl.tk/tips/raw/assets/10.patch'>Link</a></td>
</tr>
<tr class='state-withdrawn type-project'>
<td valign='top'><a href='./tip/9.md'>9</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Withdrawn</td>
<td valign='top'># TIP 9: Tk Standard Library</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/8.md'>8</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 8: Add Winico support to the wm command on windows</td>
<td valign='top'><a href='ftp://ftp.ucsd.edu/pub/alpha/tcl/tkWinWm.diff'>Link</a></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/7.md'>7</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 7: Increased resolution for TclpGetTime on Windows</td>
<td></td>
</tr>
<tr class='state-rejected type-project'>
<td valign='top'><a href='./tip/6.md'>6</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4.0</td>
<td valign='top'>Rejected</td>
<td valign='top'># TIP 6: Include [Incr Tcl] in the Core Tcl distribution</td>
<td></td>
</tr>
<tr class='state-final type-project version-84'>
<td valign='top'><a href='./tip/5.md'>5</a></td>
<td valign='top'>Project</td>
<td valign='top'>8.4</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 5: Make TkClassProcs and TkSetClassProcs Public and Extensible</td>
<td></td>
</tr>
<tr class='state-draft type-informational'>
<td valign='top'><a href='./tip/4.md'>4</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 4: Tcl Release and Distribution Philosophy</td>
</tr>
<tr class='state-accepted type-process'>
<td valign='top'><a href='./tip/3.md'>3</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Accepted</td>
<td valign='top'># TIP 3: TIP Format</td>
</tr>
<tr class='state-draft type-process'>
<td valign='top'><a href='./tip/2.md'>2</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Draft</td>
<td valign='top'># TIP 2: TIP Guidelines</td>
</tr>
<tr class='state-active type-informational'>
<td valign='top'><a href='./tip/1.md'>1</a></td>
<td valign='top' colspan=2>Informational</td>
<td valign='top'>Active</td>
<td valign='top'># TIP 1: TIP Index</td>
</tr>
<tr class='state-final type-process'>
<td valign='top'><a href='./tip/0.md'>0</a></td>
<td valign='top' colspan=2>Process</td>
<td valign='top'>Final</td>
<td valign='top'># TIP 0: Tcl Core Team Basic Rules</td>
</tr>

</tbody></table>
</div>
