#!/usr/bin/env bash

# ------
# name: setup-flatpak.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"
ARCH="$(uname -m)"

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

if ! [[ "$ARCH" =~ "aarch64" || "$ARCH" =~ "arm64" ]]; then
    sudo flatpak install -y flathub com.google.Chrome
    sudo flatpak install -y flathub com.usebottles.bottles
    sudo flatpak install -y com.super_productivity.SuperProductivity
    sudo flatpak install -y org.upscayl.Upscayl
fi

echo "------------ flatpak start ------------"
while read -r app; do
    sudo flatpak install -y flathub "$app"
done <"$APP_PATH"/packages/flatpak
echo "------------  flatpak end  ------------"