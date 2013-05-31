# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Functional Programming Language with Dependent Types"
HOMEPAGE="http://www.idris-lang.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="java noeffects"

RDEPEND=""
DEPEND="${RDEPEND}
		dev-haskell/binary
		>=dev-haskell/cabal-1.6
		>=dev-haskell/haskeline-0.7
		java? (
			>=dev-haskell/language-java-0.2.2
		)
		dev-lang/libffi
		dev-haskell/mtl
		>=dev-haskell/parsec-3
		dev-haskell/split
		dev-haskell/text
		dev-haskell/transformers
		>=dev-lang/ghc-6.10.4"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag java java) \
		$(cabal_flag noeffects noeffects)
}
