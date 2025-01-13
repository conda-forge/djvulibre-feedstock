#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

if [[ "${target_platform}" == osx-* ]]; then
  export CXXFLAGS="$CXXFLAGS -std=c++14"
fi

# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./config

./configure --prefix=${PREFIX}
make
make install
