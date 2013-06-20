# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Accelerate backend for NVIDIA GPUs"
HOMEPAGE="https://github.com/AccelerateHS/accelerate-cuda/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bounds-checks debug internal-checks unsafe-checks"

RDEPEND="=dev-haskell/accelerate-0.13*:=[profile?]
		>=dev-haskell/binary-0.5:=[profile?]
		<dev-haskell/binary-0.7:=[profile?]
		>=dev-haskell/cryptohash-0.7:=[profile?]
		<dev-haskell/cryptohash-0.10:=[profile?]
		>=dev-haskell/cuda-0.5.0.2:=[profile?]
		<dev-haskell/cuda-0.6:=[profile?]
		>=dev-haskell/fclabels-1.0:=[profile?]
		<dev-haskell/fclabels-1.2:=[profile?]
		>=dev-haskell/hashable-1.1:=[profile?]
		<dev-haskell/hashable-1.3:=[profile?]
		>=dev-haskell/hashtables-1.0:=[profile?]
		<dev-haskell/hashtables-1.2:=[profile?]
		>=dev-haskell/language-c-quote-0.4.4:=[profile?]
		<dev-haskell/language-c-quote-0.8:=[profile?]
		=dev-haskell/mainland-pretty-0.2*:=[profile?]
		>=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		=dev-haskell/safesemaphore-0.9*:=[profile?]
		>=dev-haskell/srcloc-0.2:=[profile?]
		<dev-haskell/srcloc-0.5:=[profile?]
		=dev-haskell/text-0.11*:=[profile?]
		>=dev-haskell/transformers-0.2:=[profile?]
		<dev-haskell/transformers-0.4:=[profile?]
		>=dev-haskell/unordered-containers-0.1.4:=[profile?]
		<dev-haskell/unordered-containers-0.3:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag bounds-checks bounds-checks) \
		$(cabal_flag debug debug) \
		$(cabal_flag internal-checks internal-checks) \
		$(cabal_flag unsafe-checks unsafe-checks)
}