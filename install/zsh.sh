#!/usr/bin/env sh

set -e

if [[ ! -d $HOME/.oh-my-zsh ]]; then
    message "Installing Oh My ZSH..."
    sh -c "`curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh`" || true

    if [[ 0 != $! ]]; then
        warn "Installing Oh My ZSH failed"
    fi
fi
