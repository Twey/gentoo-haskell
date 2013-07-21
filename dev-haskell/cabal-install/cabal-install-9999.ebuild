# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bin test-suite"
inherit haskell-cabal bash-completion-r1 eutils
if [[ ${PV} == 9999* ]]; then
	LIVE_EBUILD=yes
	inherit git-2
fi

DESCRIPTION="The command-line interface for Cabal and Hackage."
HOMEPAGE="http://www.haskell.org/cabal/"
EGIT_REPO_URI="git://github.com/haskell/cabal.git"

if [[ -n ${LIVE_EBUILD} ]]; then
	# Cabal's subdir
	EGIT_SOURCEDIR=${S}
	S="${S}"/${PN}
else
	SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"
	KEYWORDS="~alpha ~amd64 ~ia64 ~ppc64 ~sparc ~x86"
fi

LICENSE="BSD"
SLOT="0"
IUSE="+noprefs"

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.17.0
		<dev-haskell/cabal-1.18
		>=dev-haskell/http-4000.0.8
		<dev-haskell/http-4001
		>=dev-haskell/mtl-2.0
		<dev-haskell/mtl-3
		>=dev-haskell/network-1
		<dev-haskell/network-3
		>=dev-haskell/random-1
		<dev-haskell/random-1.1
		>=dev-haskell/stm-2.0
		<dev-haskell/stm-3
		>=dev-haskell/zlib-0.5.3
		<dev-haskell/zlib-0.6
		>=dev-lang/ghc-6.12.1
		test? ( dev-haskell/hunit
			>=dev-haskell/quickcheck-2.5
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
			>=dev-haskell/test-framework-quickcheck2-0.3
		)"

src_prepare() {
	if use noprefs; then
		epatch "${FILESDIR}/${PN}"-0.13.3-nopref.patch
	fi
}

src_install() {
	haskell-cabal_src_install

	newbashcomp "${S}/bash-completion/cabal" ${PN}
}