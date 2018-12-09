# TIP 529: Kinds of Tcl installations
	Author:         Andreas Kupries <akupries@shaw.ca>, <andreas.kupries@gmail.com>
	State:          Draft
	Type:           Informational
	Vote:           Pending
	Created:        06-Dec-2018
	Post-History:   
	Tcl-Version:    8.6
-----

# Abstract

This TIP captures the Tcl community's knowledge of the different kinds
of Tcl installations found in the wild, and their properties.

# Rationale

Put any discussion about any aspects of package management on a
consistent foundation of terms and knowledge to avoid both speaking at
cross-purposes and re-hashing the same things over and over.

Only after we have a foundation of real-word cases to inform us should
(can) we start thinking about and discussing the various related
topics, like

   * Discovery of packages through some kind of index (like `GUTTER`),
     and what this means for package meta data.

   * Getting packages from kind of repository (of binaries, sources;
     like `TEApot`, `Teaparty`, `pkg.management`, ...), and what this
     means for package meta data.

   * How Tcl searches for packages at runtime and constraints on the
     same.

   * The format of files Tcl uses to find package in the local
     space and constraints on the same.

   * Etc.

# Consequences

Note that this means that non-trivial changes of the information in
this document will have to go into a new document, which supercedes
it.

Only then can we be sure that dependent TIPs, informational and
project refer to a stable set of terms.

And it further forces us to revisit such dependent TIPs after
non-trivial changes in the foundation and to decide for each how much
of an impact these changes have on them, from none to major, and then
update them appropriately, up to and including creating new TIPs for
their topics as well, based on the new foundation.

# Installation Types

## Overview

|Id	|Label			|
|---	|---			|
|1	|System			|
|2	|Semi-system		|
|3	|Pseudo-system		|
|4	|Self-made		|
|5	|Starpack/kit		|
|6	|s.a with plugin system	|
|7	|Testing		|

The following sections expand on each of these.

## System

This kind of installation is provided by an operating system (OS)
through its (OS) package manager (OPM). Both Tcl core and packages are
usually placed in system directories (requiring root/admin
permissions).

The OPM tools often have hooks to run package-specific pre/post
installations tasks.

In this context Tcl packages are OS packages and handled by the OPM.

Dependencies between (Tcl) packages are handled by the OPM.

The OPM may or may not allow the installation of multiple versions of
the Tcl core and/or Tcl packages.

Packages can be added and removed at will, any time, under the control
of a system administrator. (Which may be the developer itself). Over
short timespans however the entire set can be considered static.

For users installing Tcl packages outside of system-directories the
OPM may or may not be able to integrate them with the OS Tcl core and
setup. (I as the author am not aware of any OS distribution which
can/does do that, however I cannot exclude the possibility either, at
the moment. Examples are sought.)

All packages exist in a single namespace. All Tcl packages further
exist in a Tcl-related single namespace. In other words, the name a
Tcl package is known under to the Tcl core is not necessariliy the
same name it is seen under by the OPM.

The OPM may or may not use different installation locations to
separate packages for Tcl 8.4 from packages for Tcl 8.5, etc. The
systems I am aware of do not do that. Examples for system which do
such a separation are sought.

Examples:

|OS	|Package Manager	|Notes			|
|---	|---	 		|---			|
|Linux	|dpkg/apt		|Debian family, Ubuntu	|
|Linux	|rpm/yast		|Redhat, SUSE		|
|Linux	|pacman			|Arch	 		|

Irrelevant from a technical perspective, but important to users, the
selection of available Tcl packages is often limited as the OS
vendors/distributors have limited development bandwidth to wrap their
package management around Tcl packages.  Especially when a Tcl package
has a ... gnarly ... build system.

## Semi-system Installation

Like a system installation, except that the tools used, i.e. the
package manager, comes from a third party instead of the OS
distributor.

The tools may or may not handle package dependencies.

The tools may or may not have hooks for package-specific pre/post
installation tasks.

The previous notes about installation and removal at will, and the
package namespace still apply.

Examples:

|OS		|Package Manager|
|---		|---		|
|OS X / Darwin	|macports	|
|OS X / Darwin	|homebrew	|

## Pseudo-system Installation

Another step away from the OS a pseudo system installation is similar
to a semi-system installation, except it and its tools are now focused
on Tcl and Tcl packages, and does not concern itself with any other
type of package the user may wish to install.

The associated PM usually installs into user-controlled areas, not
system directories, and thus does not need root/admin permissions.

The PM may or may not (try to) organize the installed Tcl packages
into some form of (binary) repository. Discussion about if each
succeeds in this or not is out of scope.

The previous notes about installation and removal at will, and the
package namespace still apply.

Multiple independent installations (into different directories) may or
may not be supported, possibly platform dependent.

Examples:

|Name		|Vendor			|
|---		|---			|
|ActiveTcl	|ActiveState		|
|Teaparty	|Roy Keene		|
|IronTcl	|Joe Mistachkin		|
|MagicSplat	|Ashok P. Nadkarni	|

## Self-made Installation

A user builds and installs Tcl and any Tcl packages she needs by
herself.

User- or system directories may be used.

There are usually no tools for package management.

The user does all the dependency tracking.

The previous notes about installation and removal at will, and the
package namespace still apply.

## Starpacks/kits

While most people will see these as applications, from a technical
perspective these are installations as well, just limited to the
packages needed by the particular application, and conjoined with that
application into a single file.

Packs and kits effectively differ only in if the Tcl core needed for
application execution is part of the file (pack) or not (kit).

From the package perspective this kind of installation is static.

Packages are are "installed" when the pack/kit is generated, and are
never removed. Future installation and removal at will is not
supported.

The package still exist in a single namespace.

## Starpacks/kits with plugin system

An application deployed in pack or kit form may allow extension by the
user in the form of some kind of plugin system. A possible
implementation would have the application reach out to an external
installation to find more packages, specifically the packages
implementing plugins for it.

Here we have a split physical space for packages. Those installed in
the application, and those outside.

As for the logical space, there are two ways of going about, both
equally valid. Which is chosen is very much dependent on the
application and its environment.

The first option is to simply have a unified namespace, like in all
the other installations coming before.

The main consequence of going this route is that packages installed
outside of the application may be able replace packages installed
inside. This may or may not be what is wanted for the application.

A reason for not wanting this is that such replacements may not be
compatible with the packages inside, and break the application. for
the more attack-minded this would be a way to alter the application,
i.e. change, remove, or inject functionality, or just spy on the
internals.

Thus the second option, keep the package namespace split as well, and
have packages found in the inside namespace be prefered over packages
in the outside namespace, regardless of relative version.

This this package replacement and attacks based on it are not possible
anymore. In counterpoint it is not possible (anymore) to fix bugs in
the application by providing fixed packages outside either. A newly
made application will be needed.

Both point and counterpoint hopefully demonstrate that both forms of
an extensible starpack/kit are sensible and useful, depending on
circumstances.

## Testing

When it comes to testing a (set of) package(s) during development what
we want is pretty much like an extensible starkit geared for
security. I.e. a package space split both physical and logical, with
the packages under test prefered over any in the environment,
regardless of version. The difference is of course that the prefered
space is not placed into a single file, like starpacks/kits.

# Miscellanea

Tcl's existing package system already offers a way of splitting a
package space, through `package prefer stable`. Note however that this
is a split along version lines, where stable versions of packages are
prefered over alpha or beta versions of the same.

The splits discussed above on the other hand are all very much not
about giving different weights to classes of versions, but about
giving different weight to classes of locations of installed packages.

# Copyright

This document has been placed in the public domain.
