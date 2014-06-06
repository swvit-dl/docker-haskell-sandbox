#!/bin/bash

if [ ! -f ./ghc-7.6.3-x86_64-unknown-linux.tar.bz2 ]; then
    wget https://www.haskell.org/ghc/dist/7.6.3/ghc-7.6.3-x86_64-unknown-linux.tar.bz2
    tar xvf ghc-7.6.3-x86_64-unknown-linux.tar.bz2
fi

docker build -t swvitaliy/haskell_book_sandbox .

