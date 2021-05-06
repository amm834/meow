#!/usr/bin/env bash

apt-get update
apt-get --assume-yes upgrade

echo "deb [trusted=yes] https://amm834.github.io/meow/dists termux extras" > $PREFIX/etc/apt/sources.list.d/meow.list

   
apt update