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
    aria2 audacity blender calibre cmake copyq exuberant-ctags git-cola thunar \
    shotcut thunderbird tilix vlc wireshark yamllint yarnpkg zoxide zsh jq g++ \
    fd-find feh ffmpeg ffmpegthumbnailer filezilla flameshot fzf git docker.io \
    gnupg2 goldendict guake highlight httpie i3 i3lock-fancy i3status inkscape \
    keepassxc libxml2-dev make mousepad neovim nnn nodejs rofi openssl ripgrep \
    pandoc pdfarranger picard picom poppler-utils remmina shellcheck shfmt fio \
    tmux golang-go rustc hdparm libuv1-dev git-lfs build-essential imagemagick \
    keepass2 p7zip-full npm rxvt-unicode libssl-dev graphicsmagick python3-dev \
    network-manager dunst htop snapd foliate cargo secrets btop wabt sway foot \
    silversearcher-ag libnss3-tools wike gimp

# hadolint lazygit rustup  azote hyprland hyprland-dev rust-analyzer

# fcitx5
sudo apt install -y \
    imsettings fcitx5-table-extra fcitx5 fcitx5-chinese-addons fcitx5-qt \
    fcitx5-configtool

# dependencies
# clash
sudo apt install -y \
    libayatana-appindicator-gtk3 libwebkit2gtk-4.0-37 libwebkit2gtk-4.0-dev

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub \
    net.hovancik.Stretchly org.wezfurlong.wezterm \
    com.visualstudio.code com.jgraph.drawio.desktop \
    md.obsidian.Obsidian io.github.alainm23.planify \
    com.mongodb.Compass org.localsend.localsend_app \
    net.agalwood.Motrix io.dbeaver.DBeaverCommunity \
    org.freecad.FreeCAD org.cryptomator.Cryptomator \
    com.tencent.WeChat org.freefilesync.FreeFileSync \
    org.freeplane.App io.gitlab.news_flash.NewsFlash \
    org.gnome.gitlab.somas.Apostrophe org.freac.freac

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub \
        com.usebottles.bottles com.google.Chrome com.wps.Office
fi

# snapcraft
sudo ln -sf /var/lib/snapd/snap /snap
sudo snap install scrcpy ghostty

if [ "$ARCH" = "$AMD64" ]; then
    sudo snap install another-redis-desktop-manager simplescreenrecorder \
        logisim-evolution
fi