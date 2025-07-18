#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

echo "-- aur start --"
while read -r app; do
    sudo paru -S "$app"
done <"$APP_PATH"/packages/aur
echo "--- aur end ---"