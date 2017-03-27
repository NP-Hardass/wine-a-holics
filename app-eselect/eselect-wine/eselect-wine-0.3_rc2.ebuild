# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Manage active wine version"
HOMEPAGE="http://bitbucket.org/eroen/eselect-wine"
SRC_URI="http://bitbucket.org/eroen/${PN}/raw/v${PV}/wine.eselect -> wine.eselect-${PV}"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="-* ~amd64 ~x86 ~x86-fbsd"
IUSE=""

RDEPEND="app-admin/eselect
	!!app-emulation/wine:0[-multislot(-)]"

S=${WORKDIR}

src_install() {
	insinto /usr/share/eselect/modules
	newins "${DISTDIR}"/wine.eselect-${PV} wine.eselect
}

pkg_prerm() {
	# Avoid conflicts with wine[-multislot] installed later
	if [[ -z ${REPLACED_BY_VERSION} ]]; then
		elog "${PN} is being uninstalled, removing symlinks"
		eselect wine unset --all || die
	else
		einfo "${PN} is being updated/reinstalled, not modifying symlinks"
	fi
}
