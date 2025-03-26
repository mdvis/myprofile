#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

sudo dnf upgrade

sudo dnf group install "development-tools"

echo "-- dnf start --"
while read -r app; do
    sudo dnf install -y "$app"
done <"$APP_PATH"/packages/dnf
echo "--- dnf end ---"