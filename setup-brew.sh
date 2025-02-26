#!/usr/bin/env bash

# ------
# name: setup-brew.sh
# author: Deve
# date: 2022-06-29
# ------

set -e
set -o pipefail

brew tap localsend/localsend
brew tap macos-fuse-t/homebrew-cask

brew install btop cmake ctags fastfetch fd ffmpeg ffmpegthumbnailer zsh wabt \
    font-symbols-only-nerd-font fuse-t fuse-t-sshfs fzf gcc gpg grex hadolint \
    highlight htop imagemagick jq lazygit libxml2 localsend make mkcert neovim \
    nnn node nss nvm openssl pandoc poppler ripgrep rust-analyzer scrcpy tmux \
    shellcheck shfmt the_silver_searcher tree yamllint zoxide mono-mdk git-lfs \
    sevenzip

brew install --cask alt-tab another-redis-desktop-manager audacity ghostty thor \
    balenaetcher blender calibre charles cryptomator dbeaver-community docker \
    drawio espanso flameshot flux freeplane gimp gitx goldendict xld textmate \
    google-chrome handbrake httpie inkscape jordanbaird-ice kap keepassxc vlc \
    keepingyouawake keka kekaexternalhelper lulu maccy macdown macpass wezterm \
    microsoft-onenote mongodb-compass motrix musicbrainz-picard netnewswire skim \
    obsidian postman rectangle sfm shotcut shottr stretchly wireshark windterm \
    switchhosts syntax-highlight visual-studio-code openinterminal-lite pika \
    openineditor-lite