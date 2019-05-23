#!/bin/bash

#Give execution permissions to scripts
chmod +x scripts/*
#Run checkers
echo "Running default checker"
./scripts/default_checker.sh
echo "Running alpha clone checker"
./scripts/alpha_clone_checker.sh
echo "Running alpha core checker"
./scripts/alpha_core_checker.sh
echo "Running alpha cplusplus checker"
./scripts/alpha_cplusplus_checker.sh
echo "Running alpha deadcode checker"
./scripts/alpha_deadcode_checker.sh
echo "Running alpha debug checker"
./scripts/alpha_debug_checker.sh
echo "Running alpha osx checker"
./scripts/alpha_osx_checker.sh
echo "Running alpha security checker"
./scripts/alpha_security_checker.sh
echo "Running alpha unix checker"
./scripts/alpha_unix_checker.sh
echo "Running alpha unix cstring checker"
./scripts/alpha_unix_cstring_checker.sh
echo "Running nullability checker"
./scripts/nullability_checker.sh
echo "Running optin checker"
./scripts/optin_checker.sh
echo "Running security checker"
./scripts/security_checker.sh
echo "Running valist checker"
./scripts/valist_checker.sh