#!/bin/sh

set -e

## install caskroom
if test ! `brew cask`; then
    brew tap caskroom/cask
fi
## defer huge installs
brew cask install -v virtualbox --appdir=/Applications
brew cask install -v virtualbox-extensionpack
brew cask install -v docker-toolbox --appdir=/Applications

## install eclipse ide for eclim plugin
brew cask install eclipse-ide

export ECLIPSE_HOME="/Applications/Eclipse.app/Contents/Eclipse"

source eclim.sh

exit 0
