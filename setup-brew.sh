#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

brew tap macos-fuse-t/homebrew-cask

echo "-- brew start --"
while read -r app; do
    brew install "$app"
done <"${APP_PATH}"/packages/brew
echo "--- brew end ---"