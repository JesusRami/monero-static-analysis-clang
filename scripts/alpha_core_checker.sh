#!/bin/bash

cp -r ./monero ./moneroTest
cd moneroTest
export CCC_CC=clang
export CCC_CXX=clang++
scan-build -enable-checker alpha.core.BoolAssignment -enable-checker alpha.core.CallAndMessageUnInitRefArg -enable-checker alpha.core.CastSize -enable-checker alpha.core.CastToStruct -enable-checker alpha.core.Conversion -enable-checker alpha.core.DynamicTypeChecker -enable-checker alpha.core.FixedAddr -enable-checker alpha.core.IdenticalExpr -enable-checker alpha.core.PointerArithm -enable-checker alpha.core.PointerSub -enable-checker alpha.core.SizeofPtr -enable-checker alpha.core.StackAddressAsyncEscape -enable-checker alpha.core.TestAfterDivZero cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
scan-build -enable-checker alpha.core.BoolAssignment -enable-checker alpha.core.CallAndMessageUnInitRefArg -enable-checker alpha.core.CastSize -enable-checker alpha.core.CastToStruct -enable-checker alpha.core.Conversion -enable-checker alpha.core.DynamicTypeChecker -enable-checker alpha.core.FixedAddr -enable-checker alpha.core.IdenticalExpr -enable-checker alpha.core.PointerArithm -enable-checker alpha.core.PointerSub -enable-checker alpha.core.SizeofPtr -enable-checker alpha.core.StackAddressAsyncEscape -enable-checker alpha.core.TestAfterDivZero make -j4
cd ..
rm -r moneroTest