// This file implements the filtering toggle boxes used on the main index page.

var sheet = (function() {
    var s = document.getElementById("facetFilteringSheet");
    return s.sheet ? s.sheet : s.styleSheet;
})();

function isChecked(boxes) {
    for (var i = 0 ; i < boxes.length; i++) {
        if (boxes[i].checked) {
            return false;
        }
    }
    return true;
};

function clearFacetClasses(facet) {
    var r = sheet.cssRules;
    // Must go through the rules backwards to keep indices consistent
    for (var i = r.length; i--; ) {
        var sel = r[i].selectorText;
        if (sel && sel.substr(1, facet.length).toLowerCase() === facet) {
            sheet.deleteRule(i);
        }
    }
};

function addFacetClasses(boxes, facet) {
    for (var i = 0; i < boxes.length; i++) {
        var ruleClass = facet + "-" + boxes[i].dataset.value;
        if (boxes[i].checked) {
            // sheet.insertRule("."+ruleClass + " {display:table-row;}", 0);
        } else {
            sheet.insertRule("." + ruleClass + " {display:none;}", 0);
        }
    }
};

function toggleFacet(facet) {
    if (!sheet.cssRules) {
        return;
    }
    var boxes = document.getElementsByClassName("toggler-" + facet);
    var none = isChecked(boxes);
    clearFacetClasses(facet);
    if (!none) {
        addFacetClasses(boxes, facet);
    }
};

function installToggleHandler(facet) {
    var boxes = document.getElementsByClassName("toggler-" + facet);
    for (var i = 0; i < boxes.length; i++) {
        boxes[i].onclick = (function() { toggleFacet(facet); });
    }
};

window.onload = function() {
    installToggleHandler("state");
    installToggleHandler("type");
    installToggleHandler("version");
};
