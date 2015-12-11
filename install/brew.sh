#!/bin/sh

set -e
## install homebrew
if test ! `which brew`; then
	ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"
fi

brew update -v

# Install recent git version
brew install -v git --HEAD --with-blk-sha1 --with-gettext --with-pcre --with-persistent-https
brew install -v htop

# install NeoVim
# @see https://github.com/neovim/homebrew-neovim/blob/master/README.md
if [ "$1" == NO ]; then
	brew install -v neovim --HEAD
fi

# install graphical vim
if [ "$2" = YES ]; then
	brew install -v macvim --with-override-system-vim --with-lua --with-luajit
fi

if test ! `which pip`; then
	brew install -v python
fi

if test ! `which pip3`; then
	brew install -v python3
fi

pip install neovim
pip3 install neovim

# install golang
if test ! `which go`; then
	brew install -v go
fi

## HEAD version to support for objc
brew install -v ctags --HEAD

## install ctags-better-php for better php indexing
brew install -v ctags-better-php
ctags_links=`brew unlink ctags-better-php`
brew link --override ctags

brew install -v php56
brew install -v php56-apcu
brew install -v php56-amqp
brew install -v php56-intl
brew install -v php56-igbinary
brew install -v php56-mcrypt
brew install -v php56-opcache
brew install -v php56-pdo-pgsql
brew install -v php56-memcache
brew install -v php56-memcached
brew install -v php56-redis
brew install -v php56-imagick
brew install -v php56-msgpack
brew install -v php56-xdebug

brew unlink -v php56

brew install -v php70
brew install -v php70-amqp
brew install -v php70-intl
brew install -v php70-libsodium
brew install -v php70-mcrypt
brew install -v php70-opcache
brew install -v php70-pdo-pgsql
brew install -v php70-xdebug
brew install -v php70-memcached --HEAD
brew install -v php70-redis --HEAD
brew install -v php70-imagick --HEAD
brew install -v php70-msgpack --HEAD
brew install -v php56-apcu --HEAD

# node version manager
if test ! `which nvm`; then
	brew -v install nvm
	nvm install v5.2.0
fi

sh "$DOTFILES/install/cask.sh"  &
defer = $!

wait defer
