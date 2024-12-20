#!/bin/bash

./build_deps.sh

original_dir=$(pwd)

return_to_original_dir() {
    cd "$original_dir" || exit
}

trap return_to_original_dir EXIT

mkdir -p build

cd build

cmake .. -DCMAKE_TOOLCHAIN_FILE=conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build .