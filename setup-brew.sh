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
    highlight htop imagemagick jq lazygit libxml2 make mkcert neovim \
    shellcheck shfmt the_silver_searcher tree yamllint zoxide mono-mdk git-lfs \
    nnn node nss nvm openssl pandoc poppler ripgrep rust-analyzer scrcpy cmake \
    btop tmux ctags fastfetch fd ffmpeg ffmpegthumbnailer zsh hadolintsevenzip \
    font-symbols-only-nerd-font fuse-t fuse-t-sshfs fzf gcc gpg grex wabt
    

brew install --cask \
    keepingyouawake keka kekaexternalhelper lulu maccy macdown macpass wezterm \
    obsidian postman rectangle sfm shotcut shottr stretchly wireshark windterm \
    mongodb-compass musicbrainz-picard netnewswire skim pika \
    switchhosts syntax-highlight visual-studio-code openinterminal-lite motrix \
    balenaetcher blender charles cryptomator dbeaver-community orbstack httpie \
    drawio espanso flameshot flux freeplane gimp gitx goldendict thor textmate \
    google-chrome handbrake calibre inkscape jordanbaird-ice kap keepassxc vlc \
    alt-tab another-redis-desktop-manager audacity ghostty xld arc duckduckgo \
    openineditor-lite cursor easydict loop android-studio joplin localsend neovide \
    readest syncthing ollama telegram-desktop tencent-lemon thunderbird
    
