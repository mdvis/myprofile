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

# lazygit
sudo dnf copr enable atim/lazygit -y
sudo dnf copr enable pgdev/ghostty -y

sudo dnf install -y aria2 audacity blender btop calibre cmake copyq ctags docker \
    fd-find feh ffmpeg-free ffmpegthumbs filezilla flameshot fzf gcc gimp git git-cola \
    gnupg goldendict guake highlight httpie i3 i3lock i3status inkscape jq keepass \
    keepassxc lazygit libxml2 make mousepad neovim nnn nodejs npm openssl p7zip \
    pandoc pdfarranger picard picom poppler remmina ripgrep rofi shellcheck shfmt \
    shotcut thunderbird tilix tmux vlc wireshark yamllint yarnpkg zoxide zsh \
    GraphicsMagick ImageMagick the_silver_searcher nss-tools hadolint rust-analyzer \
    NetworkManager rxvt-unicode azote dunst htop thunar snapd hyprland hyprland-devel \
    fio hdparm wabt wike secrets foliate sway ghostty foot openssl-devel

# fcitx5
sudo dnf install -y imsettings fcitx5-table-extra fcitx5 fcitx5-chinese-addons \
    fcitx5-configtool fcitx5-qt

# dependencies
# clash
sudo dnf install -y libayatana-appindicator-gtk3 webkit2gtk4.0

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub md.obsidian.Obsidian com.visualstudio.code com.jgraph.drawio.desktop \
    org.localsend.localsend_app net.hovancik.Stretchly org.freac.freac net.agalwood.Motrix \
    org.cryptomator.Cryptomator io.dbeaver.DBeaverCommunity org.freefilesync.FreeFileSync \
    org.freeplane.App org.freecad.FreeCAD com.tencent.WeChat io.github.alainm23.planify \
    io.gitlab.news_flash.NewsFlash org.gnome.gitlab.somas.Apostrophe \
    com.mongodb.Compass

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub com.usebottles.bottles com.google.Chrome \
        com.wps.Office
fi

# snapcraft
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install scrcpy

if [ "$ARCH" = "$AMD64" ]; then
    sudo snap install another-redis-desktop-manager
    sudo snap install simplescreenrecorder
fi