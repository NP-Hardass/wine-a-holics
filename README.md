Welcome to the Wine-a-holics Overlay!
=======================================

Repoman Status: [![Build Status](https://travis-ci.org/NP-Hardass/wine-a-holics.svg?branch=master)](https://travis-ci.org/NP-Hardass/wine-a-holics)

Goals
-----
This overlay strives to provide a testbed for new features for Gentoo's Wine packaging.
Currently, this consists of a patchset on top of Gentoo's ebuilds that allows for
slotted Wine enabling users to install and use multiple versions of Wine, with and
without Wine-Staging, at the same time.  We know that Wine sometimes includes
regressions from version to version, so the the goal there is to allow you to
switch and use whatever version(s) that your applications need. Additionally,
as with Gentoo's ebuilds, the non-vanilla versions of wine also support Gallium Nine Direct3D9.

Packages
--------

This is a list of packages and any associated notes:

| Package								| Description								| Notes															|
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| [app-admin/eselect-wine](app-admin/eselect-wine)			| Manage active wine version						| Written by eroen, handles various multislot versions of Wine								|
| [app-emulation/wine](app-emulation/wine)				| Free implementation of Windows(tm) on Unix				| Based on the ebuilds from Gentoo, slotted										|
| [app-emulation/wine-desktop-common](app-emulation/wine-desktop-common)| Various desktop menu items and icons for wine				| Forked from Tetromino's wine-gentoo tarball, originally from Ubuntu							|
| [app-emulation/wine-staging](app-emulation/wine-staging)		| Free implementation of Windows(tm) on Unix				| Based on the ebuilds from Gentoo, slotted, with wine-staging built-in			|
| [app-emulation/wine-vanilla](app-emulation/wine-vanilla)		| Free implementation of Windows(tm) on Unix				| Based on the ebuilds from Gentoo, slotted, all external patchsets disabled			|
| [media-libs/mesa](media-libs/mesa)					| OpenGL-like graphic library for Linux					| Copied from Gentoo, patched for those that want bleeding edge d3d9 support.			|


Installation
------------
Layman
======
Layman allows for the easy management of overlays.

Then you can add this overlay with:

	# layman -a wine-a-holics

	or

	# layman -o https://git.io/wine-overlays-xml -f -a wine-a-holics

To sync the overlay via layman:

	# layman -s wine-a-holics

Repos.conf
==========

Alternatively, overlays can easily be installed by putting the wine-overlay.conf
file in your /etc/portage/repos.conf/ directory:

	# wget https://git.io/wine-a-holics-conf -O /etc/portage/repos.conf/wine-a-holics.conf

To sync the overlay with this setup:

	# emaint sync -r wine-a-holics


eix
===

To sync the overlay via eix:

	# eix-sync

