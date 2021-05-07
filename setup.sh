#!/usr/bin/env bash

apt-get update
apt-get --assume-yes upgrade

echo "deb [trusted=yes] https://amm834.github.io/meow/dist termux extras" > $PREFIX/etc/apt/sources.list.d/meow.list

   
apt update