#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

ARCH="$(uname -m)"
AMD64="x86_64"

sudo pacman -S --needed \
    graphicsmagick imagemagick networkmanager

sudo pacman -S --needed \
    aria2 audacity azote blender btop calibre cmake copyq ctags docker dunst \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-qt \
    fcitx5-table-extra fd feh ffmpeg ffmpegthumbnailer filezilla fio fish \
    flameshot foliate foot fzf gimp git git-lfs gnupg \
    go guake hdparm highlight httpie hyprland i3-wm i3lock i3status inkscape \
    jq keepass keepassxc libxml2 mousepad neovim nnn nodejs npm \
    nss openssl p7zip pandoc-bin pdfarranger picard picom poppler \
    remmina ripgrep rofi ruff rust rust-analyzer rxvt-unicode secrets \
    shellcheck shfmt shotcut sway the_silver_searcher thunar thunderbird tilix \
    tmux vlc wabt wike wireshark-qt yamllint yarn zoxide

sudo pacman -S --needed base-devel

yay -S \
    goldendict-git hadolint-bin snapd git-cola

. "${APP_PATH}/setup-common.sh"