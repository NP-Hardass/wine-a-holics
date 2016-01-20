Welcome to the Wine-a-holics Overlay!
=======================================

Repoman Status: [![Build Status](https://travis-ci.org/NP-Hardass/wine-a-holics.svg?branch=master)](https://travis-ci.org/NP-Hardass/wine-a-holics)

Goals
-----
This overlay strives to provide bleeding edge Wine and Wine related ebuilds.
As a sister project of wine-overlay, we aim to improve ebuild quality,
squash bugs, and incorporate the kinds of features that users desire, like
slotted Wine that enables users to use multiple versions of Wine, with and
without Wine-Staging, at the same time.  We know that Wine sometimes includes
regressions from version to version, so the the goal there is to allow you to
switch and use whatever version(s) that your applications need. Additionally,
the non-vanilla versions of wine also support Gallium Nine Direct3D9.

Packages
--------

This is a list of packages and any associated notes:

| Package								| Description								| Notes															|
| --------------------------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| [app-admin/eselect-wine](app-admin/eselect-wine)			| Manage active wine version						| Written by eroen, handles various multislot versions of Wine								|
| [app-emulation/wine](app-emulation/wine)				| Free implementation of Windows(tm) on Unix				| Originally copied from Gentoo, dependency fixes, bug fixes, wine-staging support, and a functioning live ebuild	|
| [app-emulation/wine-desktop-common](app-emulation/wine-desktop-common)| Various desktop menu items and icons for wine				| Forked from Tetromino's wine-gentoo tarball, originally from Ubuntu							|
| [app-emulation/wine-staging](app-emulation/wine-staging)		| Free implementation of Windows(tm) on Unix				| Based on the ebuilds from the branches of wine-overlay, slotted wine, with wine-staging built-in			|
| [app-emulation/wine-vanilla](app-emulation/wine-vanilla)		| Free implementation of Windows(tm) on Unix				| Based on the ebuilds from the branches of wine-overlay, slotted wine, all external patchsets disabled			|
| [app-emulation/winetricks](app-emulation/winetricks)			| Easy way to install DLLs needed to work around problems in Wine	| Originally copied from Gentoo, version bump										|
| [media-libs/mesa](media-libs/mesa)					| OpenGL-like graphic library for Linux					| Copied directly from the x11 overlay, live ebuild for those that want bleeding edge d3d9 support.			|


Installation
------------
Layman
======
Layman allows for the easy management of overlays.

If you haven’t used layman yet, just run these commands:

	# emerge -av layman
	# echo "source /var/lib/layman/make.conf" >> /etc/make.conf
	# layman -f

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

