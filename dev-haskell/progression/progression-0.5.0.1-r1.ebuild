# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Automates the recording and graphing of criterion benchmarks"
HOMEPAGE="http://chplib.wordpress.com/2010/02/04/progression-supporting-optimisation-in-haskell/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/criterion-0.4:=[profile?]
		<dev-haskell/criterion-0.7:=[profile?]
		>=dev-haskell/haskeline-0.6:=[profile?]
		<dev-haskell/haskeline-0.8:=[profile?]
		>=dev-haskell/txt-sushi-0.5:=[profile?]
		<dev-haskell/txt-sushi-0.7:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		dev-haskell/cabal"

src_prepare() {
	cabal_chdeps \
		'txt-sushi >= 0.5 && < 0.6' 'txt-sushi >= 0.5 && < 0.7'
}