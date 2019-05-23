#!/bin/bash

#Download Monero's source code
git clone https://github.com/monero-project/monero
cd monero && git submodule init && git submodule update
cd ..
