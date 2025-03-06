#!/usr/bin/env bash

# ------
# name: setup-apt.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

ARCH="$(uname -m)"
AMD64="x86_64"

sudo apt install -y \
    graphicsmagick imagemagick network-manager

sudo apt install -y \
    aria2 audacity azote blender btop calibre cmake copyq docker.io dunst \
    exuberant-ctags fcitx5 fcitx5-chinese-addons fcitx5-configtool libfcitx5-qt1 \
    fcitx5-table-extra fd-find feh ffmpeg ffmpegthumbnailer filezilla fio fish \
    flameshot foliate foot fzf gimp git git-cola git-lfs gnupg2 golang-go \
    guake hdparm highlight httpie hyprland i3 i3lock-fancy i3status inkscape \
    jq keepass2 keepassxc libnss3-tools libxml2-dev mousepad neovim nnn nodejs \
    npm openssl p7zip-full pandoc pdfarranger picard picom poppler-utils \
    remmina ripgrep rofi ruff rust-all rxvt-unicode secrets shellcheck shfmt \
    shotcut silversearcher-ag sway thunar thunderbird tilix tmux vlc wabt wike \
    wireshark yamllint yarnpkg zoxide

sudo apt install -y \
    python3-dev goldendict snapd build-essential # hadolint rust-analyzer

. "${APP_PATH}/setup-common.sh"