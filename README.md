Welcome to the Unofficial Wine Overlay!
=======================================

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

| Package						| Description								| Notes															|
| ----------------------------------------------------- | --------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| [app-emulation/wine](app-emulation/wine)		| Free implementation of Windows(tm) on Unix				| Originally copied from Gentoo, dependency fixes, bug fixes, wine-staging support, and a functioning live ebuild	|
| [app-emulation/winetricks](app-emulation/winetricks)	| Easy way to install DLLs needed to work around problems in Wine	| Originally copied from Gentoo, version bump										|

Installation
------------

Layman allows for the easy management of overlays.

If you haven’t used layman yet, just run these commands:

	# emerge -av layman
	# echo "source /var/lib/layman/make.conf" >> /etc/make.conf
	# layman -f

Then you can add this overlay wih:

	# layman -o https://raw.githubusercontent.com/NP-Hardass/wine-overlay/master/overlay.xml -f -a wine-overlay

To sync the overlay via layman:

	# layman -s wine-overlay

To delete the overlay:

	# layman -d wine-overlay

To sync the overlay via eix:

	# eix-sync

Branches
--------
This overlay provides several branches for experimental features and
features in development.  Many of these features are described in
[Goals](#Goals). To take advantage of these branches, simply change
directory to the overlay, and checkout the new branch.  Layman will
continue to use this branch until you opt to switch back.

Branches that users are likely to be interested in are:
* `d3d9` for Gallium Nine Direct3D9 support
* `slotted_wine` for Wine with support for multislot

To switch to a branch called BRANCH:

	# cd /var/lib/layman/wine-overlay
	# git checkout BRANCH

To switch back to the default branch:
	
	# cd /var/lib/layman/wine-overlay
	# git checkout master
