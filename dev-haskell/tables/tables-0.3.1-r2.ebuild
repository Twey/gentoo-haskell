# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="In-memory storage with multiple keys using lenses and traversals"
HOMEPAGE="http://github.com/ekmett/tables/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+test-properties transformers2"

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/cereal-0.3:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/comonad-3:=[profile?] <dev-haskell/comonad-4:=[profile?]
	>=dev-haskell/hashable-1.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/lens-3.8:=[profile?] <dev-haskell/lens-4:=[profile?]
	>=dev-haskell/profunctors-3.2:=[profile?] <dev-haskell/profunctors-4:=[profile?]
	>=dev-haskell/safecopy-0.6.3:=[profile?] <dev-haskell/safecopy-0.9:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.4:=[profile?]
	>=dev-haskell/transformers-compat-0.1:=[profile?] <dev-haskell/transformers-compat-1:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-lang/ghc-7.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10.0.0
	test? ( >=dev-haskell/doctest-0.9.1 )
"

src_prepare() {
	cabal_chdeps \
		'binary               >= 0.5 && < 0.6' 'binary               >= 0.5 && < 0.8' \
		'cereal               >= 0.3 && < 0.4' 'cereal               >= 0.3 && < 0.5'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag test-properties test-properties) \
		$(cabal_flag transformers2 transformers2)
}