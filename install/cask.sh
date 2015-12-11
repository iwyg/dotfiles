#!/bin/sh

set -e

## install caskroom
if test ! `brew cask`; then
    brew tap caskroom/cask
fi

if [[ -e "/Applications/iTerm.app" ]]; then
    echo "Installing iTerm"
    brew cask install -v iterm2 --appdir=/Applications
fi

if [[ -e "/Applications/VirtualBox.app" ]]; then
    echo "Installing VirtualBox"
    brew cask install -v virtualbox --appdir=/Applications
    brew cask install -v virtualbox-extensionpack
fi

if [[ -d "/opt/homebrew-cask/Caskroom/dockertoolbox" ]]; then
    echo "Installing docker"
    brew cask install -v docker-toolbox --appdir=/Applications
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

exit 0
