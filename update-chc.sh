#!/bin/bash

cd
chaincoind stop
rm -fr chaincoin/
git clone https://github.com/chaincoin/chaincoin
cd chaincoin/src
./autogen.sh
./configure --without-gui --disable-tests
make
make install
chaincoind
