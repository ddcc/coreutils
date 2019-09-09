#!/bin/bash

set -e

TARGET="base64"

if [ ! -f ./configure ]; then
  ./bootstrap
  git checkout lib
fi

export AFL_CC=/mnt/data/sources/llvm/build_debug/bin/clang

if [ ! -f ./Makefile ]; then
  CC=../afl/afl-clang-fast CFLAGS=-g LIBS=-lacl ./configure
fi

AFL_GCOV=1 make -j

mkdir -p bin
cp src/$TARGET bin/$TARGET
