#!/usr/bin/env bash

# ------
# name: setup-cargo.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

echo "-- cargo start --"
while read -r app; do
    cargo install --locked "$app"
done <"$APP_PATH"/packages/cargo
echo "--- cargo end ---"