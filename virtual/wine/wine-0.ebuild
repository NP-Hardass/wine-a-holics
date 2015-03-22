# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Virtual for WINE that supports multiple variants and slotting"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
# Note, the ordering here is intentional, to take advantage of the short-circuit
# logic of portage, to enforce wine-vanilla as default for new users.  The idea
# behind this is that some USE flags may pull in 3rd-party patchsets, so default
# of vanilla prevents that.
RDEPEND="
	|| (
		app-emulation/wine-vanilla
		app-emulation/wine
		app-emulation/wine-staging
	)"
