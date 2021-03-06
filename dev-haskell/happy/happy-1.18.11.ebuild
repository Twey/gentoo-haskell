# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

CABAL_FEATURES="bin"
inherit eutils haskell-cabal autotools

DESCRIPTION="Happy is a parser generator for Haskell"
HOMEPAGE="http://www.haskell.org/happy/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86"
IUSE="doc"

RDEPEND=""
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3
		>=dev-haskell/mtl-1.0
		>=dev-lang/ghc-6.8.2
		doc? (  ~app-text/docbook-xml-dtd-4.2
				app-text/docbook-xsl-stylesheets )"

src_prepare() {
	use doc && cd doc && eautoconf
}

src_configure() {
	haskell-cabal_src_configure

	if use doc; then
		# does not like out-of-source builds
		cd doc || die
		econf
	fi
}

src_compile() {
	haskell-cabal_src_compile

	if use doc; then
		emake -C doc -j1
	fi
}

src_test() {
	emake -C "${S}/tests/"
}

src_install() {
	haskell-cabal_src_install
	if use doc; then
		cd doc || die
		dohtml -r happy/*
		doman "${S}/doc/happy.1"
	fi
}
