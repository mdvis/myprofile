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

sudo dnf group install "development-tools"

sudo dnf install -y \
    aria2 audacity azote blender btop calibre cmake copyq ctags docker dunst \
    fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-qt fcitx5-table-extra \
    fd-find feh ffmpeg-free ffmpegthumbs filezilla fio fish flameshot foliate \
    foot fzf gimp git git-cola git-lfs gnupg golang guake hdparm highlight \
    httpie hyprland i3 i3lock i3status inkscape jq keepass keepassxc libxml2 \
    mousepad neovim nnn nodejs npm nss-tools openssl p7zip pandoc pdfarranger \
    picard picom poppler remmina ripgrep rofi ruff rust rust-analyzer zoxide \
    rxvt-unicode secrets shellcheck shfmt shotcut sway the_silver_searcher \
    thunar thunderbird tilix tmux vlc wabt wike wireshark yamllint yarnpkg \
    GraphicsMagick ImageMagick NetworkManager python-devel goldendict hadolint \
    snapd

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub \
    com.jgraph.drawio.desktop com.tencent.WeChat com.visualstudio.code \
    io.dbeaver.DBeaverCommunity io.github.alainm23.planify \
    io.gitlab.news_flash.NewsFlash md.obsidian.Obsidian net.agalwood.Motrix \
    net.hovancik.Stretchly org.cryptomator.Cryptomator org.freac.freac \
    org.freecad.FreeCAD org.freefilesync.FreeFileSync org.freeplane.App \
    org.gnome.gitlab.somas.Apostrophe org.localsend.localsend_app \
    org.wezfurlong.wezterm

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub \
        com.google.Chrome com.usebottles.bottles com.mongodb.Compass \
        com.wps.Office
fi

# snapcraft
sudo ln -sf /var/lib/snapd/snap /snap

sudo snap install scrcpy ghostty yazi

if [ "$ARCH" = "$AMD64" ]; then
    sudo snap install another-redis-desktop-manager simplescreenrecorder \
        logisim-evolution
fi