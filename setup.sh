#!/usr/bin/env bash

echo "deb https://amm834.github.io/meow/dists termux extras" >> $PREFIX/etc/apt/sources.list.d/meow.list

if [[ $(which curl) ]]; then
    curl -sLo $PREFIX/etc/apt/trusted.gpg.d/meow.gpg --create-dirs https://amm834.github.io/meow/meow.gpg
fi
