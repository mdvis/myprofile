#!/usr/bin/env bash

# ------
# name: setup-snap.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

sudo ln -sf /var/lib/snapd/snap /snap

echo "------------ snap start ------------"
while read -r app; do
    sudo snap install "$app"
done <"$APP_PATH"/packages/snap

while read -r app; do
    sudo snap install "$app" --classic
done <"$APP_PATH"/packages/snap-classic
echo "------------  snap end  ------------"