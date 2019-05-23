#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build enable-checker security.FloatLoopCounter -enable-checker security.insecureAPI.rand -enable-checker security.insecureAPI.strcpy cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build enable-checker security.FloatLoopCounter -enable-checker security.insecureAPI.rand -enable-checker security.insecureAPI.strcpy make -j4
cd ..
rm -r moneroTest