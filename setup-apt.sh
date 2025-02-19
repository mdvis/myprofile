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

sudo apt install -y aria2 audacity blender btop++ calibre cmake copyq exuberant-ctags docker.io \
    fd-find feh ffmpeg ffmpegthumbnailer filezilla flameshot fzf build-essential gimp git git-cola \
    gnupg2 goldendict guake highlight httpie i3 i3lock-fancy i3status inkscape jq keepass2 \
    keepassxc lazygit libxml2-dev make mousepad neovim nnn nodejs npm openssl p7zip-full \
    pandoc pdfarranger picard picom poppler-utils remmina ripgrep rofi shellcheck shfmt \
    shotcut thunderbird tilix tmux vlc wireshark yamllint yarnpkg zoxide zsh \
    graphicsmagick imagemagick silversearcher-ag libnss3-tools hadolint rust-analyzer \
    network-manager rxvt-unicode-256color azote dunst htop thunar snapd hyprland hyprland-dev \
    fio hdparm wabt wike secrets foliate sway ghostty foot libssl-dev python3-dev \
    g++ golang-go rustc cargo rustup-init libuv1-dev git-lfs

# fcitx5
sudo apt install -y imsettings fcitx5-table-extra fcitx5 fcitx5-chinese-addons \
    fcitx5-configtool fcitx5-qt

# dependencies
# clash
sudo apt install -y libayatana-appindicator-gtk3 libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-dev

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub md.obsidian.Obsidian com.visualstudio.code com.jgraph.drawio.desktop \
    org.localsend.localsend_app net.hovancik.Stretchly org.freac.freac net.agalwood.Motrix \
    org.cryptomator.Cryptomator io.dbeaver.DBeaverCommunity org.freefilesync.FreeFileSync \
    org.freeplane.App org.freecad.FreeCAD com.tencent.WeChat io.github.alainm23.planify \
    io.gitlab.news_flash.NewsFlash org.gnome.gitlab.somas.Apostrophe org.wezfurlong.wezterm \
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