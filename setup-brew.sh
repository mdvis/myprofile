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
    fuse-t fzf gcc git-lfs go gpg grex hadolint highlight htop imagemagick zsh \
    jq lazygit libxml2 make mkcert neovim nnn node nss nvm openssl pandoc pnpm \
    prettier ripgrep ruff rust rust-analyzer scrcpy sevenzip shellcheck zoxide \
    shfmt sqlfluff stylelint stylua the_silver_searcher tmux tree wabt poppler \
    yazi yamllint font-symbols-only-nerd-font aria2

brew install --cask \
    alt-tab android-studio another-redis-desktop-manager arc audacity windterm \
    blender calibre charles cryptomator cursor dbeaver-community drawio shottr \
    easydict espanso flameshot flux freeplane ghostty gimp gitx handbrake keka \
    google-chrome httpie inkscape joplin jordanbaird-ice kap keepassxc macdown \
    kekaexternalhelper localsend loop lulu maccy macpass motrix neovide ollama \
    netnewswire mongodb-compass musicbrainz-picard rectangle openineditor-lite \
    openinterminal-lite orbstack pika postman readest sfm shotcut obsidian xld \
    skim stretchly switchhosts syncthing syntax-highlight telegram-desktop vlc \
    tencent-lemon textmate thor thunderbird wezterm keepingyouawake duckduckgo \
    wireshark visual-studio-code balenaetcher
