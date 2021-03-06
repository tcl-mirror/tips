# Help

# Adding a new TIP

Adding a TIP is not hard, but there are a few steps involved. The
process will become even simpler as the system matures.

## For New Contributors, READ THIS FIRST!

Note that instead of following the process in the sections below, you can
email your TIP document to either [the TIP
Editor](mailto:donal.k.fellows@manchester.ac.uk) or [the Tcl Core mailing
list](mailto:tcl-core@lists.sourceforge.net) and we will sort out the
registration in this repository for you. We do not mind doing this at all, but
please mark the email with something like `TIP Contribution` in the subject
line so we notice it easily.

Also note that, in general, we would like you to provide an implementation of
your TIP as well; otherwise you're waiting on unresourced goodwill of a group
of very busy people and it can take a very long time for anything to get
done. TIP implementations are usually preferred as either branches in the
appropriate repository ([Tcl](https://core.tcl-lang.org/tcl) or
[Tk](https://core.tcl-lang.org/tk), depending on what you're contributing to)
or as a patch in a ticket in the right repository.  Other code contribution
routes are possible, but are usually discouraged as they've a history of
undergoing bitrot. And remember that we have high engineering standards and
support many platforms: we want code to work for everyone (who uses it) rather
than on just a single system on a fine day when the Moon is in the Seventh
House and Jupiter aligns with Mars.

# Preliminaries

TIPs are maintained in a [fossil](https://fossil-scm.org) source code
repository. The following steps are required to set up an environment
to create and edit TIPs.

1. [Download](http://fossil-scm.org/index.html/uv/download.html)
fossil if you do not already have it set up on your system. It is
distributed as a single file executable so installation consists of
simply placing it in some suitable directory in your `PATH` environment
variable.

1. Create a user account on the [TIP repository](https://core.tcl-lang.org/tips) if
you do not have one already.
You can create one yourself, but the administrator needs to
assign you commit privileges.

1. [Clone](http://fossil-scm.org/index.html/help?cmd=clone) the
repository into a suitable directory. For example,

        cd ~/repos
        fossil clone https://USERNAME@core.tcl-lang.org/tips tips.fossil

1. Checkout the TIP sources into your working directory with the
fossil [`open`](http://fossil-scm.org/index.html/help?cmd=open) command.

        cd ~/tips
        fossil open ~/repos/tips.fossil

The text of all the TIPs is in the `tip` subdirectory and formatted
using the Markdown language.

# Adding the new TIP

To add a new TIP,

1. Create a file in the `tip` subdirectory.  Choose a name of the
format `NNN.md`, for example 467.md. The TIP numbering is currently
not enforced by the system, so pick the next unused number based on
the [current TIPs](https://core.tcl-lang.org/tips/doc/main/index.md).

1. [TIP 2](https://core.tcl-lang.org/tips/doc/main/tip/2.md)
specifies guidelines for writing a TIP.
Write up the text, using [Markdown mark-up](/md_rules) (plenty of
examples are available - pay attention to the header as described below).
**NOTE:** if you already have the TIP text written in the old TIP format,
you can use the `tip2md.tcl` script in the `scripts` subdirectory
to convert it to Markdown.


1. To preview the TIP before checking in, you can use the
[`fossil ui`](http://fossil-scm.org/index.html/help?cmd=clone) command
to start a local fossil server and then go to
<http://localhost:8080/doc/ckout/tip/NNN.md> where `NNN` is your TIP
number.

1. Add the file to the fossil repository

        fossil add NNN.md

1. Then, in the subdirectory `scripts`, run the `mkhtmlindex.tcl`
script, as this updates the Home page.

1. Submit all changes via fossil (this includes `index.json`, `index.md`,
and `tip/NNN.md`).

        fossil commit -m "Added TIP NNN"

# TIP Header

The index script requires a special format for meta-data in the TIP header.
For example:

	# TIP 0: Tcl Core Team Basic Rules
	    State:          Final
	    Type:           Process
	    Vote:           Done
	    Post-History:
	------

The meta-data is terminated by `------` and indented with tabs
(for nicer display in fossil).

See [TIP 3](https://core.tcl-lang.org/tips/doc/main/tip/3.md) for a detailed
specification of the header format and meaning of each header field.
