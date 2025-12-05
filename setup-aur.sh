#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

echo "------------ dnf start ------------"
while read -r app; do
    sudo yay -S --noconfire "$app"
done <"$APP_PATH"/packages/aur
echo "------------  dnf end  ------------"