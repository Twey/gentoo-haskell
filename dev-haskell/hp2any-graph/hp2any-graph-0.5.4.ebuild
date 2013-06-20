# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Real-time heap graphing utility and profile stream server with a reusable graphing module."
HOMEPAGE="http://www.haskell.org/haskellwiki/Hp2any"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/glut:=[profile?]
		dev-haskell/hp2any-core:=[profile?]
		dev-haskell/network:=[profile?]
		dev-haskell/opengl:=[profile?]
		>=dev-haskell/parseargs-0.1.3.1:=[profile?]
		>=dev-lang/ghc-6.10.4:=
		media-libs/freeglut"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"