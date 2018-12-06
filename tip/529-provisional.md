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

# System

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

Packages can be added and removed at will, under the control of a
system administrator. (Which may be the developer itself).

For users installing Tcl packages outside of system-directories the
OPM may or may not be able to integrate them with the OS Tcl core and
setup.

Examples:

|OS	|Package Manager	|Notes			|
|---	|---	 		|---			|
|Linux	|dpkg/apt		|Debian family, Ubuntu	|
|Linux	|rpm/yast		|Redhat, SUSE		|
|Linux	|pacman			|Arch	 		|

Irrelevant from a technical perspective, but important to users, the
selection of available Tcl packages is often limited as the OS
vendors/distributors have limited dev bandwidth to wrap their package
management around Tcl packages.  Especially when a Tcl package has a
... gnarly ... build system.

# Semi-system

# Pseudo-system

# Self-made

# Starpack/kit

# Starpack/kit with plugin system

# Testing





# Copyright

This document has been placed in the public domain.
