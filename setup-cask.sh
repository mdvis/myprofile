#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

brew tap macos-fuse-t/homebrew-cask

echo "-- cask start --"
while read -r app; do
    brew install --cask "$app"
done <"$APP_PATH"/packages/cask
echo "--- cask end ---"