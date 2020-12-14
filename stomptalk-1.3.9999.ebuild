# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake git-r3

DESCRIPTION="stomp protocol parser"
HOMEPAGE="https://github.com/ikonopistsev/stomptalk"
#SRC_URI="https://github.com/ikonopistsev/stomptalk/archive/v${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="https://github.com/ikonopistsev/stomptalk"

LICENSE="Apache License 2.0"

SLOT="0/${PV}"

KEYWORDS=""
IUSE="static-libs memeq"

DOCS=(
    README.md
)

S=${WORKDIR}/${P/_/-}

src_configure() {
    local -a mycmakeargs=(
	-DSTOMPTALK_LIBRARY_STATIC=$(usex static-libs 'ON' 'OFF')
	-DSTOMPTALK_USE_MEMEQ=$(usex memeq 'ON' 'OFF')
	-DSTOMPTALK_LIBRARY_INSTALL=ON
    )

    cmake_src_configure
}
