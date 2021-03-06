# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="cabal-db"
HOMEPAGE="http://github.com/vincenthz/cabal-db"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	dev-haskell/mtl
	>=dev-haskell/tar-0.4.0
	dev-haskell/utf8-string
	>=dev-lang/ghc-6.10.4
"
