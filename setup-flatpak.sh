#!/usr/bin/env bash

# ------
# name: setup-flatpak.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo "-- flatpak start --"
while read -r app; do
    sudo flatpak install -y flathub "$app"
done <"$APP_PATH"/packages/flatpak
echo "--- flatpak end ---"