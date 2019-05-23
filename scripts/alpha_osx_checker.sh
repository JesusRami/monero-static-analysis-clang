#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build -enable-checker alpha.osx.cocoa.DirectIvarAssignment -enable-checker alpha.osx.cocoa.DirectIvarAssignmentForAnnotatedFunctions -enable-checker alpha.osx.cocoa.InstanceVariableInvalidation -enable-checker alpha.osx.cocoa.MissingInvalidationMethod -enable-checker alpha.osx.cocoa.localizability.PluralMisuseChecker cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build -enable-checker alpha.osx.cocoa.DirectIvarAssignment -enable-checker alpha.osx.cocoa.DirectIvarAssignmentForAnnotatedFunctions -enable-checker alpha.osx.cocoa.InstanceVariableInvalidation -enable-checker alpha.osx.cocoa.MissingInvalidationMethod -enable-checker alpha.osx.cocoa.localizability.PluralMisuseChecker make -j4
cd ..
rm -r moneroTest