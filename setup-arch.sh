#!/usr/bin/env bash

# ------
# name: setup-arch.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

sudo pacman -S --needed \
    aria2 audacity azote base-devel calibre cmake copyq feh yarn yazi i3status \
    make docker dunst fcitx5 fcitx5-chinese-addons fcitx5-configtool fcitx5-qt \
    btop ffmpeg ffmpegthumbnailer filezilla fio flameshot foliate foot fzf gcc \
    ghostty gimp fd git-lfs gnupg graphicsmagick guake hdparm highlight httpie \
    hyprland i3-wm i3lock imagemagick inkscape keepass keepassxc keyviz jq nnn \
    ctags lazygit libxml2 mkcert mousepad nama neovim networkmanager newsflash \
    nodejs npm nss obsidian openssl pandoc-bin pdfarranger picard picom zoxide \
    poppler prettier remmina ripgrep rofi ruff rust-analyzer rxvt-unicode pnpm \
    secrets shellcheck shfmt shotcut sqlfluff stylelint stylua sway git scrcpy \
    thunar thunderbird tilix tmux vlc wabt wezterm wireshark-qt yamllint p7zip \
    blender the_silver_searcher atuin fish veracrypt

yay -S \
    another-redis-desktop-manager-appimage bottles clash-verge-rev-bin hiddify \
    dbeaver-ee dprint drawio freac freefilesync freeplane-git git-cola planify \
    google-chrome cryptomator goldendict-git logisim-evolution mongodb-compass \
    motrix nekoray simplescreenrecorder stretchly wechat-bin wike hadolint-bin \
    visual-studio-code-bin wps-office-cn localsend switchhosts