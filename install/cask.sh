#!/bin/sh

set -e

## install caskroom
if [[ ! -d "/usr/local/Library/Taps/caskroom" ]]; then
    brew tap caskroom/cask
fi

if [[ -e "/Applications/iTerm.app" ]]; then
    echo "Installing iTerm"
    brew cask install -v iterm2 --appdir=/Applications
fi

if [[ -e "/Applications/VirtualBox.app" ]]; then
    echo "Installing VirtualBox"
    brew cask install -v virtualbox --appdir=/Applications
    brew cask install -v virtualbox-extension-pack
fi

if [[ -d "/opt/homebrew-cask/Caskroom/dockertoolbox" ]]; then
    echo "docker..."
    brew cask install -v dockertoolbox --appdir=/Applications
fi

## install eclipse ide for eclim plugin
if [[ -e "/Applications/Eclipse.app" ]]; then
    echo "Installing eclipse ide"
    brew cask install eclipse-ide --appdir=/Applications
fi

export ECLIPSE_HOME="/Applications/Eclipse.app/Contents/Eclipse"

if [[ -e "$ECLIPSE_HOME/eclimd" ]]; then
    echo "Installing eclim..."
    source "$DOTFILES/install/eclim.sh"
fi
