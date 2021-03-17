pkg_name=bison
pkg_origin=core
pkg_version=3.7.6
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_description="\
Bison is a general-purpose parser generator that converts an annotated \
context-free grammar into a deterministic LR or generalized LR (GLR) parser \
employing LALR(1) parser tables.\
"
pkg_upstream_url="https://www.gnu.org/software/bison/"
pkg_license=('GPL-3.0')
pkg_source="http://ftp.gnu.org/gnu/$pkg_name/${pkg_name}-${pkg_version}.tar.xz"
pkg_shasum="67d68ce1e22192050525643fc0a7a22297576682bef6a5c51446903f5aeef3cf"
pkg_deps=(
  core/glibc
  core/m4
)
pkg_build_deps=(
  core/coreutils
  core/diffutils
  core/patch
  core/make
  core/gcc
  core/perl
)
pkg_bin_dirs=(bin)


# ----------------------------------------------------------------------------
# **NOTICE:** What follows are implementation details required for building a
# first-pass, "stage1" toolchain and environment. It is only used when running
# in a "stage1" Studio and can be safely ignored by almost everyone. Having
# said that, it performs a vital bootstrapping process and cannot be removed or
# significantly altered. Thank you!
# ----------------------------------------------------------------------------
if [[ "$STUDIO_TYPE" = "stage1" ]]; then
  pkg_build_deps=(
    core/gcc
    core/m4
    core/coreutils
  )
fi
