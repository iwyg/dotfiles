#!/bin/sh

set -e

if [ ! -d "$HOME/.config" ]; then
    mkdir -p "$HOME/.config"
fi

ln -s "$DOTFILES/vim.link $HOME/.config/nvim"
ln -s "$DOTFILES/vimrc $HOME/.config/nvim/init.vim"

exit 0
