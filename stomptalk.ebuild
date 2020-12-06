# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake

DESCRIPTION="stomp protocol parser"
HOMEPAGE="https://github.com/ikonopistsev/stomptalk"
SRC_URI="https://github.com/ikonopistsev/stomptalk/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache License 2.0"

SLOT="0/${PV}"

KEYWORDS="~amd64 ~x86"
IUSE="static memeq"

DOCS=(
    README.md
)

src_configure() {
    local -a mycmakeopts=(
    -DCMAKE_BUILD_TYPE=Release
    -DSTOMPTALK_LIBRARY_STATIC=$(usex static 'ON' 'OFF')
    -DSTOMPTALK_USE_MEMEQ=$(usex memeq 'ON' 'OFF')
    -DSTOMPTALK_LIBRARY_INSTALL=ON
    )

    cmake_src_configure
}

