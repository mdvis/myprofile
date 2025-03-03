#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap macos-fuse-t/homebrew-cask

brew install \
    highlight htop imagemagick jq lazygit libxml2 make mkcert neovim go ffmpeg \
    shellcheck shfmt the_silver_searcher tree yamllint zoxide git-lfs gpg grex \
    nnn node nss nvm openssl pandoc poppler ripgrep rust-analyzer scrcpy cmake \
    btop tmux ctags fastfetch fd ffmpegthumbnailer wabt rust hadolint sevenzip \
    font-symbols-only-nerd-font fuse-t fuse-t-sshfs fzf gcc zsh

brew install --cask \
    keepingyouawake keka kekaexternalhelper lulu maccy macdown macpass wezterm \
    obsidian postman rectangle sfm shotcut shottr stretchly wireshark windterm \
    mongodb-compass musicbrainz-picard netnewswire skim pika syncthing readest \
    switchhosts syntax-highlight visual-studio-code openinterminal-lite motrix \
    balenaetcher blender charles cryptomator dbeaver-community orbstack httpie \
    google-chrome handbrake calibre inkscape jordanbaird-ice kap keepassxc vlc \
    alt-tab another-redis-desktop-manager audacity ghostty xld arc thunderbird \
    easydict joplin neovide ollama duckduckgo localsend loop espanso flameshot \
    flux freeplane gimp gitx thor textmate tencent-lemon android-studio cursor \
    drawio telegram-desktop openineditor-lite
