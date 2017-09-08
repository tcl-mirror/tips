package require http
set index [open ../index.md w+]
fconfigure $index -translation lf -encoding utf-8
puts $index "# TIP Index"

puts $index {
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
</div>
}

puts $index {
<div class="index">
<table border="1" cellpadding="2" cellspacing="0" class="sortable"
 id="tipTable">
<thead><tr>
<th>#</th>
<th>type</th>
<th>tcl version</th>
<th>status</th>
<th>title</th>
</tr></thead><tbody>
}

foreach tip [lsort -decreasing -dictionary [glob ../tip/*.md]] {
  set number [file tail [file rootname $tip]]
  set source [open ../tip/$number.md]
  fconfigure $source -encoding utf-8
  set data [read $source]
  close $source
  unset -nocomplain fields
  set preamble [regsub {\n-----.*} $data {}]
  puts "Adding TIP $number to index"
  set lines [split $preamble "\n"]
  set lines [lmap line $lines {string trim $line}]
  set fields(title) [string trim [join [lrange [split [lindex $lines 0] :] 1 end] :]]
  foreach line $lines {
    set valueList [lassign [split $line :] key]
    set fields([string tolower $key]) [string trim [join $valueList]]
  }
  parray fields
  puts $index {<tr>}
  if {![info exists fields(tcl-version)]} {
    set fields(tcl-version) -
  }
  puts $index "<td valign='top'><a href='./tip/$number.md'>$number</a></td>" 
  puts $index "<td valign='top'>$fields(type)</td>"
  puts $index "<td valign='top'>$fields(tcl-version)</td>"
  puts $index "<td valign='top'>$fields(state)</td>"
  puts $index "<td valign='top'>$fields(title)</td>"
  puts $index </tr>
}

puts $index {</tbody></table>}
puts $index {</div>}
close $index