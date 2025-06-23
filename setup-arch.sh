#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

echo "-- arch start --"
while read -r app; do
    sudo pacman -S "$app"
done <"$APP_PATH"/packages/arch
echo "--- arch end ---"