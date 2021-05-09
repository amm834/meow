#!/usr/bin/env bash

####################
### Installtion ####
###################

# upgrade the index of packages 
apt update && apt upgrade

# Setup The ItsPpintless Repo
curl -L https://its-pointless.github.io/setup-pointless-repo.sh | bash

# Setup The Meow Repo
curl -L https://raw.githubusercontent.com/amm834/meow/main/setup.sh | bash

# Default Shell
PACKAGES="zsh" # ZSH Shell

# Core
PACKAGES+="pkg-config" 
PACKAGES+="tar"
PACKAGES+="file"

# Programming Languages That I'm Using
PACKAGES+="php"
PACKAGES+="php-apache" # Apache module of  PHP
PACKAGES+="mariadb" # MySQL database

PACKAGES+="clang" # C/C++
PACKAGES+="make" # For Make File System Programming Languages
PACKAGES+="cmake" # For C

PACKAGES+="rust" # Rust

PACKAGES+="nodejs" # JS Run Time
PACKAGES+="mongodb" # NoSql DB

PACKAGES+="python"

PACKAGES+="ecj" # To compile java source code
PACKAGES+="dx" # VM for Java

# Services

PACKAGES+="lamp"

apt update
apt dist-upgrade -y
apt install -y $PACKAGES

curl -L https://raw.githubusercontent.com/amm834/meow/main/httpd.conf > $PREFIX/etc/apache2/httpd.conf

curl -L https://raw.githubusercontent.com/amm834/meow/main/php.conf > $PREFIX/etc/apache2/conf.d/php.conf
