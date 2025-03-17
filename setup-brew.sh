#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

# set -e
set -o pipefail

brew tap macos-fuse-t/homebrew-cask

brew install \
    aria2 btop cmake ctags dprint fastfetch fd ffmpeg ffmpegthumbnailer fish \
    font-symbols-only-nerd-font fuse-t fuse-t-sshfs fzf git-cola gcc git-lfs \
    go gpg grex hadolint highlight htop imagemagick jq lazygit libxml2 make \
    mkcert neovim nnn node nss nvm openssl pandoc poppler prettier ripgrep \
    ruff rust rust-analyzer scrcpy sevenzip shellcheck shfmt sqlfluff stylelint \
    stylua the_silver_searcher tmux tree wabt yamllint yazi zoxide mkcert keyviz

brew install --cask \
    alt-tab android-studio another-redis-desktop-manager arc audacity \
    balenaetcher blender calibre charles cryptomator cursor dbeaver-community \
    drawio duckduckgo easydict espanso flameshot flux freeplane ghostty gimp \
    gitx google-chrome handbrake httpie inkscape joplin jordanbaird-ice kap \
    keepassxc keepingyouawake keka kekaexternalhelper localsend loop lulu \
    maccy macdown macpass mongodb-compass motrix musicbrainz-picard neovide \
    netnewswire obsidian ollama openineditor-lite openinterminal-lite orbstack \
    pika readest rectangle shotcut shottr skim stretchly switchhosts syncthing \
    syntax-highlight telegram-desktop tencent-lemon textmate thor thunderbird \
    veracrypt visual-studio-code vlc wezterm windterm wireshark xld