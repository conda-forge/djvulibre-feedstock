#!/bin/sh

if [[ "${target_platform}" == osx-* ]]; then
  export CXXFLAGS="$CXXFLAGS -std=c++14"
fi

./configure --prefix=${PREFIX}
make
make install
