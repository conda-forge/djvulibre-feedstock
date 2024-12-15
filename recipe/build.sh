#!/bin/sh
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./config

if [[ "${target_platform}" == osx-* ]]; then
  export CXXFLAGS="$CXXFLAGS -std=c++14"
fi

./configure --prefix=${PREFIX}
make
make install
