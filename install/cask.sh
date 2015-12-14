#!/usr/bin/env sh

set -e

source $DOTFILES/util/functions.sh

## install caskroom
if test ! `brew tap | grep -i caskroom/cask > /dev/null`; then
    message "Installing Caskroom..."
    brew tap caskroom/cask
fi

if [[ ! -e "/Applications/iTerm.app" ]]; then
    message "Installing iTerm..."
    brew cask install -v iterm2 --appdir=/Applications
else
    message "Skip installing iTerm. Already installed"
fi

if [[ ! -e "/Applications/VirtualBox.app" ]]; then
    message "Installing VirtualBox..."
    brew cask install -v virtualbox --appdir=/Applications
    brew cask install -v virtualbox-extension-pack
else
    message "Skip installing VirtualBox. Already installed"
fi

if [[ ! -d "/opt/homebrew-cask/Caskroom/dockertoolbox" ]]; then
    message "Installing docker..."
    brew cask install -v dockertoolbox --appdir=/Applications
else
    message "Skip installing Docker Toolbox. Already installed"
fi

if test ! `which java > /dev/null`; then
    warn "Java appears not to be installed. Skipping..."
    exit 0
fi

## install eclipse ide for eclim plugin
if [[ ! -e "/Applications/Eclipse.app" ]]; then
    message "Installing Eclipse IDE..."
    brew cask install eclipse-ide --appdir=/Applications
else
    message "Skip installing Eclipse IDE. Already installed"
fi

export ECLIPSE_HOME="/Applications/Eclipse.app/Contents/Eclipse"

if [[ ! -e "$ECLIPSE_HOME/eclimd" ]]; then
    message "Installing eclim..."
    . $DOTFILES/install/eclim.sh
else
    message "Skip installing eclim. Already installed"
fi
