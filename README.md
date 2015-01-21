Welcome to the Unofficial Wine Overlay!
=======================================

Packages
--------
---
This is a list of packages and any associated notes:

| Package			| Description					| Notes															|
| -----------------------------	| ---------------------------------------------	| ---------------------------------------------------------------------------------------------------------------------	|
| [[app-emulation/wine]]	| Free implementation of Windows(tm) on Unix	| Originally copied from Gentoo, Dependency fixes, bug fixes, better wine-staging support, fully functional live ebuild	|
---

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
