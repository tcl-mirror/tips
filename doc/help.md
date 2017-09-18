# Help

# Adding a new TIP

Adding a TIP is not hard, but there are a few steps involved. The
process will become even simpler as the system matures.

# Preliminaries

First make sure you have a user account for the core.tcl.tk/tips
repository - you can create one yourself, but the administrator needs to
assign you commit privileges.

Secondly: clone the repository.

The text of all the TIPs is in the subdirectory "tip" and is formatted
according to the Markdown language.

# Actually adding the new TIP

For adding a new TIP the following steps are currently needed:

 * Choose a name like 467.md - the TIP numbering is currently not
   enforced by the system, so pick it via the table at the Home page.

 * Write up the text, using Markdown mark-up (plenty of examples are
   available - pay attention to the header as described below)

 * To preview the tip .md file before checking in, you can use `fossil ui` and then go to <http://localhost:8080/doc/ckout/tip/###.md>.

 * Add it to the fossil repository

 * Then, in the subdirectory "scripts", run the "mkhtmlindex.tcl"
   script, as this updates the Home page.

 * Submit the changes via fossil.


# TIP Header

The index script requires a special format for meta-data in the TIP header. For example:

	# TIP 0: Tcl Core Team Basic Rules
	    State:          Final
	    Type:           Process
	    Vote:           Done
	    Post-History:
	------

The meta-data is terminated by `------` and indented with tabs (for nicer display in fossil)


Optional:
Addtion to step 2:
(Should you have a TIP in the old format, you can use Mark's
tip2md.tcl script in the subdirectory
"scripts" to convert it.)
