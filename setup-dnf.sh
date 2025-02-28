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

sudo dnf copr enable atim/lazygit -y
sudo dnf copr enable pgdev/ghostty -y

sudo dnf install -y \
    aria2 audacity blender btop calibre cmake copyq ctags docker fd-find p7zip \
    ffmpeg-free ffmpegthumbs filezilla flameshot fzf gcc gimp git git-cola feh \
    gnupg goldendict guake highlight httpie i3 i3lock i3status inkscape jq npm \
    keepassxc lazygit libxml2 make mousepad neovim rofi nodejs openssl keepass \
    pandoc pdfarranger picard picom poppler remmina ripgrep shellcheck zsh nnn \
    shotcut thunderbird tilix tmux vlc wireshark yamllint yarnpkg zoxide shfmt \
    GraphicsMagick ImageMagick the_silver_searcher nss-tools hadolint hyprland \
    NetworkManager rxvt-unicode azote dunst htop thunar hyprland-devel git-lfs \
    fio hdparm wabt wike secrets foliate sway ghostty foot openssl-devel snapd \
    gcc-c++ golang rust cargo rustup uv rust-analyzer python-devel

# fcitx5
sudo dnf install -y \
    imsettings fcitx5-table-extra fcitx5 fcitx5-chinese-addons fcitx5-qt \
    fcitx5-configtool

# dependencies
# clash
sudo dnf install -y libayatana-appindicator-gtk3 webkit2gtk4.0

# flathub
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install flathub \
    com.jgraph.drawio.desktop net.hovancik.Stretchly \
    org.localsend.localsend_app net.agalwood.Motrix \
    org.cryptomator.Cryptomator com.visualstudio.code \
    io.dbeaver.DBeaverCommunity com.tencent.WeChat \
    org.freefilesync.FreeFileSync org.freeplane.App \
    io.github.alainm23.planify md.obsidian.Obsidian \
    io.gitlab.news_flash.NewsFlash org.freecad.FreeCAD \
    org.gnome.gitlab.somas.Apostrophe org.freac.freac \
    org.wezfurlong.wezterm

if [ "$ARCH" = "$AMD64" ]; then
    flatpak install flathub \
        com.usebottles.bottles com.google.Chrome com.mongodb.Compass \
        com.wps.Office
fi

# snapcraft
sudo ln -sf /var/lib/snapd/snap /snap
sudo snap install scrcpy

if [ "$ARCH" = "$AMD64" ]; then
    sudo snap install another-redis-desktop-manager simplescreenrecorder \
        logisim-evolution
fi