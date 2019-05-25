#!/bin/bash

#Run checkers
echo "Running default checkers"
./scripts/default_checker.sh
echo "Running alpha clone checkers"
./scripts/alpha_clone_checker.sh
echo "Running alpha core checkers"
./scripts/alpha_core_checker.sh
echo "Running alpha cplusplus checkers"
./scripts/alpha_cplusplus_checker.sh
echo "Running alpha deadcode checkers"
./scripts/alpha_deadcode_checker.sh
echo "Running alpha debug checkers"
./scripts/alpha_debug_checker.sh
echo "Running alpha osx checkers"
./scripts/alpha_osx_checker.sh
echo "Running alpha security checkers"
./scripts/alpha_security_checker.sh
echo "Running alpha unix checkers"
./scripts/alpha_unix_checker.sh
echo "Running alpha unix cstring checkers"
./scripts/alpha_unix_cstring_checker.sh
echo "Running nullability checkers"
./scripts/nullability_checker.sh
echo "Running optin checkers"
./scripts/optin_checker.sh
echo "Running security checkers"
./scripts/security_checker.sh
echo "Running valist checkers"
./scripts/valist_checker.sh
