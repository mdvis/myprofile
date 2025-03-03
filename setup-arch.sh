#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed \
    docker fcitx5 fcitx5-chinese-addons fcitx5-configtool fd feh ffmpeg zoxide \
    filezilla flameshot fzf gcc gimp git gnupg guake highlight i3-wm sway foot \
    i3lock i3status inkscape jq keepass keepassxc libxml2 make mousepad httpie \
    secrets newsflash foliate ffmpegthumbnailer wezterm git-lfs keyviz ghostty \
    nama rxvt-unicode azote dunst htop thunar hyprland hdparm fio wabt lazygit \
    the_silver_searcher nss rust-analyzer shotcut mkcert base-devel scrcpy vlc \
    yamllint ripgrep rofi shellcheck shfmt thunderbird tilix tmux wireshark-qt \
    neovim nnn nodejs npm openssl p7zip pandoc-bin pdfarranger picard obsidian \
    aria2 audacity blender btop calibre cmake copyq ctags apostrophe picom zsh \
    graphicsmagick imagemagick fcitx5-qt networkmanager remmina poppler yarn

yay -S \
    another-redis-desktop-manager-appimage bottles clash-verge-rev-bin planify \
    cryptomator dbeaver-ee drawio freac freefilesync freeplane-git wike motrix \
    google-chrome hadolint-bin localsend git-cola nekoray stretchly wechat-bin \
    mongodb-compass simplescreenrecorder visual-studio-code-bin goldendict-git \
    wps-office-cn switchhosts logisim-evolution hiddify