#!/usr/bin/env bash

# ------
# name: setup-pip.sh
# author: Deve
# date: 2025-03-26
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

[ -e $HOME/nvim_venv ] || python3 -m venv $HOME/nvim_venv
[ -e $HOME/nvim_venv ] && . $HOME/nvim_venv/bin/activate

echo "------------ pip start ------------"
while read -r app; do
    pip3 install "$app"
done <"$APP_PATH"/packages/pip
echo "------------  pip end  ------------"
