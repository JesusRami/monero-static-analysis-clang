#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build -enable-checker optin.cplusplus.VirtualCall -enable-checker optin.mpi.MPI-Checker -enable-checker optin.osx.cocoa.localizability.EmptyLocalizationContextChecker -enable-checker optin.osx.cocoa.localizability.NonLocalizedStringChecker -enable-checker optin.performance.Padding -enable-checker optin.portability.UnixAPI cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build -enable-checker optin.cplusplus.VirtualCall -enable-checker optin.mpi.MPI-Checker -enable-checker optin.osx.cocoa.localizability.EmptyLocalizationContextChecker -enable-checker optin.osx.cocoa.localizability.NonLocalizedStringChecker -enable-checker optin.performance.Padding -enable-checker optin.portability.UnixAPI make
cd ..
rm -r moneroTest