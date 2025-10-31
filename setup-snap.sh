#!/usr/bin/env bash

# ------
# name: setup-snap.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"
ARCH="$(uname -m)"

sudo ln -sf /var/lib/snapd/snap /snap

if ! [[ "$ARCH" =~ "aarch64" || "$ARCH" =~ "arm64" ]]; then
    sudo snap install logisim-evolution
    sudo snap install simplescreenrecorder
fi

echo "------------ snap start ------------"
while read -r app; do
    sudo snap install "$app"
done <"$APP_PATH"/packages/snap

while read -r app; do
    sudo snap install "$app" --classic
done <"$APP_PATH"/packages/snap-classic
echo "------------  snap end  ------------"