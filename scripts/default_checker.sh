#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build make -j4
cd ..
rm -r moneroTest 