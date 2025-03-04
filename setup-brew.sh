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
    btop cmake ctags dprint fastfetch fd ffmpeg ffmpegthumbnailer fuse-t-sshfs \
    fuse-t yamllint fzf gcc git-lfs go gpg hadolint highlight htop imagemagick \
    jq lazygit libxml2 make mkcert neovim nnn node nss nvm openssl pandoc pnpm \
    prettier ripgrep ruff rust rust-analyzer scrcpy sevenzip shellcheck zoxide \
    shfmt sqlfluff stylelint stylua the_silver_searcher tmux tree wabt poppler \
    grex yazi font-symbols-only-nerd-font aria2 atuin fish

brew install --cask \
    alt-tab android-studio another-redis-desktop-manager arc audacity windterm \
    blender calibre charles cryptomator cursor dbeaver-community drawio shottr \
    easydict espanso flameshot flux freeplane ghostty gimp gitx handbrake keka \
    google-chrome httpie inkscape joplin jordanbaird-ice kap keepassxc macdown \
    kekaexternalhelper localsend loop lulu maccy macpass motrix neovide ollama \
    netnewswire mongodb-compass musicbrainz-picard rectangle openineditor-lite \
    balenaetcher orbstack pika readest shotcut obsidian xld visual-studio-code \
    skim stretchly switchhosts syncthing syntax-highlight telegram-desktop vlc \
    tencent-lemon textmate thor thunderbird wezterm keepingyouawake duckduckgo \
    wireshark openinterminal-lite