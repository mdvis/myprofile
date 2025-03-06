#!/usr/bin/env bash

# ------
# name: setup-dnf.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

ARCH="$(uname -m)"
AMD64="x86_64"

sudo dnf install -y \
    GraphicsMagick ImageMagick NetworkManager

sudo dnf install -y \
    aria2 audacity azote blender btop calibre cmake copyq ctags docker dunst \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-qt \
    fcitx5-table-extra fd-find feh ffmpeg-free ffmpegthumbs filezilla fio fish \
    flameshot foliate foot fzf gimp git git-cola git-lfs gnupg \
    golang guake hdparm highlight httpie hyprland i3 i3lock i3status inkscape \
    jq keepass keepassxc libxml2 mousepad neovim nnn nodejs npm \
    nss-tools openssl p7zip pandoc pdfarranger picard picom poppler \
    remmina ripgrep rofi ruff rust rust-analyzer rxvt-unicode secrets \
    shellcheck shfmt shotcut sway the_silver_searcher thunar thunderbird tilix \
    tmux vlc wabt wike wireshark yamllint yarnpkg zoxide

sudo dnf install -y \
    python-devel goldendict hadolint snapd

sudo dnf group install "Development Tools"

. "${APP_PATH}/setup-common.sh"