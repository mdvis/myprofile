#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed aria2 audacity blender btop calibre cmake copyq ctags \
    docker fcitx5 fcitx5-chinese-addons fcitx5-configtool fd feh ffmpeg apostrophe \
    filezilla flameshot fzf gcc gimp git gnupg guake highlight httpie i3-wm sway \
    i3lock i3status inkscape jq keepass keepassxc libxml2 make mousepad foot \
    neovim nnn nodejs npm openssl p7zip pandoc-bin pdfarranger picard picom poppler \
    remmina ripgrep rofi shellcheck shfmt thunderbird tilix tmux vlc wireshark-qt \
    yamllint yarn zoxide zsh graphicsmagick imagemagick fcitx5-qt networkmanager obsidian \
    the_silver_searcher nss rust-analyzer shotcut mkcert base-devel lazygit scrcpy \
    nama rxvt-unicode azote dunst htop thunar hyprland hdparm fio wabt keyviz ghostty \
    secrets newsflash foliate ffmpegthumbnailer wezterm git-lfs

yay -S another-redis-desktop-manager-appimage bottles clash-verge-rev-bin planify \
    cryptomator dbeaver-ee drawio freac freefilesync freeplane-git git-cola wike \
    goldendict-git google-chrome hadolint-bin localsend motrix nekoray stretchly \
    simplescreenrecorder switchhosts visual-studio-code-bin wechat-bin wps-office-cn \
    mongodb-compass