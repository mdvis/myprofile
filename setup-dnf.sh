#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

APP_NAME="myprofile"
APP_PATH="${HOME}/.${APP_NAME}"

# DNF5 installation commands
sudo dnf install dnf5-plugins
sudo dnf config-manager addrepo --overwrite --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
sudo dnf install gh --repo gh-cli

sudo dnf copr enable jdxcode/mise

sudo dnf upgrade

sudo dnf group install "development-tools"

echo "------------ dnf start ------------"
while read -r app; do
    sudo dnf install -y "$app"
done <"$APP_PATH"/packages/dnf
echo "------------  dnf end  ------------"