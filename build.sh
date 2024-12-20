#!/bin/bash

mkdir -p build
cmake -B ./build -S ./src
cmake --build ./build