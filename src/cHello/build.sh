#!/usr/bin/env bash

set -e

if [ ! -f build/build.ninja ]; then
    mkdir -p build
    pushd build
    cmake -G Ninja -DCMAKE_TOOLCHAIN_FILE=../../../utils/cc65-toolchan-example/toolchains/cc65-toolchain.cmake ..
    popd
fi

cmake --build build -- "$@"
