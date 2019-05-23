#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build -enable-checker debug.AnalysisOrder -enable-checker debug.ConfigDumper -enable-checker debug.DumpCFG -enable-checker debug.DumpCallGraph -enable-checker debug.DumpCalls -enable-checker debug.DumpDominators -enable-checker debug.DumpLiveVars -enable-checker debug.DumpTraversal -enable-checker debug.ExprInspection -enable-checker debug.Stats -enable-checker debug.TaintTest -enable-checker debug.ViewCFG -enable-checker debug.ViewCallGraph -enable-checker debug.ViewExplodedGraph cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build -enable-checker debug.AnalysisOrder -enable-checker debug.ConfigDumper -enable-checker debug.DumpCFG -enable-checker debug.DumpCallGraph -enable-checker debug.DumpCalls -enable-checker debug.DumpDominators -enable-checker debug.DumpLiveVars -enable-checker debug.DumpTraversal -enable-checker debug.ExprInspection -enable-checker debug.Stats -enable-checker debug.TaintTest -enable-checker debug.ViewCFG -enable-checker debug.ViewCallGraph -enable-checker debug.ViewExplodedGraph make -j4
cd ..
rm -r moneroTest