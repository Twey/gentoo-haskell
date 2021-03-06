# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="High performance, regular, shape polymorphic parallel arrays."
HOMEPAGE="http://repa.ouroborus.net"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/quickcheck-2.3:=[profile?]
		<dev-haskell/quickcheck-2.7:=[profile?]
		=dev-haskell/vector-0.10*:=[profile?]
		>=dev-lang/ghc-7.6.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
