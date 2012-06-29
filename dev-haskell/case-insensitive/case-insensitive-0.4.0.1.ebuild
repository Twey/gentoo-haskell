# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Case insensitive string comparison"
HOMEPAGE="http://hackage.haskell.org/package/case-insensitive"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/hashable-1.2[profile?]
		<dev-haskell/text-0.12[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@bytestring >= 0.9 && < 0.10@bytestring >= 0.9 \&\& < 0.11@' \
		-e 's@base       >= 3   && < 4.6@base       >= 3   \&\& < 4.7@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}
