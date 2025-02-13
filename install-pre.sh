#!/usr/bin/env bash

# ------
# name: install.sh
# author: Deve
# date: 2022-03-27
# ------

set -e
# set -u
set -o pipefail

Red='\033[0;31m'
Color_off='\033[0m'

msg() {
    printf '%b\n' "$1" >&2
}

error() {
    msg "${Red}[✘]${Color_off} ${1}${2}"
    exit 1
}

curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh || error "Failed to install zim"
curl -sS https://starship.rs/install.sh | sh || error "Failed to install starship"