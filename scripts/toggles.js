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
    if (!r) {
        return;
    }
    boxes = document.getElementsByClassName("toggler-" + f);
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

function installToggleHandler(facet) {
    boxes = document.getElementsByClassName("toggler-" + facet);
    for (i=0; i<boxes.length; i++) {
        boxes[i].onclick = (function() { toggleFacet(facet); });
    }
}

window.onload = function() {
    installToggleHandler("state");
    installToggleHandler("type");
    installToggleHandler("version");
};
