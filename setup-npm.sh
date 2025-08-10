#!/usr/bin/env bash

# ------
# name: setup-npm.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

echo "------------ npm start ------------"
while read -r app; do
    sudo npm i -g "$app"
done <"$APP_PATH"/packages/npm
echo "------------  npm end  ------------"