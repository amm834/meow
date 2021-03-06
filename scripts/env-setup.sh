#!/usr/bin/env bash

####################
### Installtion ####
###################

# upgrade the index of packages 
apt update && apt upgrade -y

# Setup The ItsPpintless Repo
curl -L https://its-pointless.github.io/setup-pointless-repo.sh | bash

# Setup The Meow Repo
curl -L https://raw.githubusercontent.com/amm834/meow/main/setup.sh | bash

# Default Shell
PACKAGES="zsh" # ZSH Shell

# Core
PACKAGES+=" pkg-config" 
PACKAGES+=" tar"
PACKAGES+=" file"
PACKAGES+=" lsd"

# Programming Languages That I'm Using
PACKAGES+=" php"
PACKAGES+=" php-apache" # Apache module of  PHP
PACKAGES+=" mariadb" # MySQL database

PACKAGES+=" clang" # C/C++
PACKAGES+=" make" # For Make File System Programming Languages
PACKAGES+=" cmake" # For C

PACKAGES+=" rust" # Rust

PACKAGES+=" nodejs" # JS Run Time
PACKAGES+=" mongodb" # NoSql DB

PACKAGES+=" python"

PACKAGES+=" ecj" # To compile java source code
PACKAGES+=" dx" # VM for Java

# Services

PACKAGES+=" lamp"

#apt update
#apt dist-upgrade -y
apt install -y $PACKAGES

# Base URL
URL="https://raw.githubusercontent.com/amm834/meow/main"

# Download Config Settings
curl -L $URL/scripts/configs/php/httpd.conf > $PREFIX/etc/apache2/httpd.conf

curl -L $URL/scripts/configs/php/php.conf > $PREFIX/etc/apache2/conf.d/php.conf
