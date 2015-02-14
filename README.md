Welcome to the Unofficial Wine Overlay!
=======================================

Repoman Status: [![Build Status](https://travis-ci.org/NP-Hardass/wine-overlay.svg?branch=wine-a-holics)](https://travis-ci.org/NP-Hardass/wine-overlay)

Goals
-----
This overlay strives to provide bleeding edge Wine and Wine related ebuilds,
hopefully with them being accepted into the main Gentoo tree.  Additionally,
we aim to improve ebuild quality, squash bugs, and implement a slotted Wine
(exclusive for this overlay) that will enable users to use multiple
versions of Wine, with and without Wine-Staging, at the same time.  We know
that Wine sometimes includes regressions from version to version, so the
the goal there is to allow you to switch and use whatever version(s) that
your applications need.

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

Layman allows for the easy management of overlays.

If you haven’t used layman yet, just run these commands:

	# emerge -av layman
	# echo "source /var/lib/layman/make.conf" >> /etc/make.conf
	# layman -f

Then you can add this overlay wih:

	# layman -o https://raw.githubusercontent.com/NP-Hardass/wine-a-holics/master/overlay.xml -f -a wine-a-holics

To sync the overlay via layman:

	# layman -s wine-a-holics

To delete the overlay:

	# layman -d wine-a-holics

To sync the overlay via eix:

	# eix-sync
