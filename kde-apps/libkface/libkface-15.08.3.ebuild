# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit kde4-base

DESCRIPTION="Qt/C++ wrapper around LibFace to perform face recognition and detection"
HOMEPAGE="https://projects.kde.org/projects/kde/kdegraphics/libs/libkface"
SRC_URI="mirror://kde/Attic/applications/${PV}/src/${P}.tar.xz"

LICENSE="GPL-2"
KEYWORDS=" ~amd64 ~x86"
IUSE=""

DEPEND="media-libs/opencv:=[contrib(+)]"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-15.08.2-opencv3.patch"
	"${FILESDIR}/${PN}-15.08.3-opencv3.1.patch"
)

src_configure() {
	local mycmakeargs=(
		-DENABLE_OPENCV3=$(has_version ">=media-libs/opencv-3" && echo yes || echo no)
	)

	kde4-base_src_configure
}
