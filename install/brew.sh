#!/usr/bin/env sh

set -e

source $DOTFILES/util/functions.sh

brew_or_msg() {
    local cmd=`echo "$1 $2" | xargs`
    local formula=$2

    if [[ -z $3 ]]; then
        local msgtype='warn'
    else
        local msgtype=$3
    fi

    local action=`get_action_type $cmd`

    brew $cmd $formula || `$msgtype "$action $formula failed."`
}


## install homebrew
if test ! `which brew`; then
    message "Installing Homebrew..."
    ruby -e "`curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install`"
fi

#brew update -v

# Install recent git version
brew_or_msg "install -v" "git --HEAD --with-blk-sha1 --with-pcre --with-persistent-https"
brew_or_msg "install -v" "ack"
brew_or_msg "install -v" "the_silver_searcher"
brew_or_msg "install -v" "htop"
brew_or_msg "install -v" "tree"
brew_or_msg "install -v" "tmux"
# tmux clipboard helper
brew_or_msg "install -v" "reattach-to-user-namespace"
# Install recent git version
if [[ ! `which zsh` == '/usr/local/bin/zsh' ]]; then
    brew_or_msg "install" "zsh"
fi

# install NeoVim
# @see https://github.com/neovim/homebrew-neovim/blob/master/README.md
if [[ "$1" == true ]]; then
    if test ! `which nvim`; then
        message "Installing NeoVim..."
        brew_or_msg "install -v" "neovim --HEAD"
    else
        message "Updating NeoVim..."
        brew_or_msg "reinstall -v" "neovim --HEAD"
    fi
fi

# install graphical vim
if [[ "$2" == true ]]; then
    if test ! `which mvim`; then
        brew_or_msg "install -v" "macvim --with-override-system-vim --with-lua --with-luajit"
    else
        brew_or_msg "upgrade -v" "macvim"
    fi
fi

if test ! `which pip`; then
    brew install -v python || true
fi

if test ! `which pip3`; then
    brew install -v python3 || true
fi

if  [[ ! `pip list | grep -i 'neovim' | xargs` ]]; then
    pip install --user neovim || true
else
    pip install --upgrade --user neovim || true
fi

if  [[ ! `pip3 list | grep -i 'neovim' | xargs` ]]; then
    pip3 install neovim --user  || true
else
    pip3 install --upgrade --user neovim || true
fi

# install golang
if test ! `which go`; then
    message "Installing golang..."
    brew install -v go || true
fi

## HEAD version to support for objc
if [[ `brew list | egrep "^ctags$" | xargs` ]]; then
    brew uninstall ctags 
fi

message "Installing ctags"
brew install -v ctags --HEAD
brew unlink --force ctags

## install ctags-better-php for better php indexing
curl https://raw.githubusercontent.com/shawncplus/phpcomplete.vim/master/misc/ctags-better-php.rb > /usr/local/Library/Formula/ctags-better-php.rb
brew install -v ctags-better-php

php_versions=`brew list | egrep "^php[5-7][0-9].*?" | xargs`;

if [[ $php_versions ]]; then
    brew uninstall -v --force $php_versions
fi

message "Installing php56..."

brew install -v php56
brew install -v php56-apcu
brew install -v php56-event
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

brew unlink -v --force php56

message "Installing php70..."

brew install -v php70
brew install -v php70-amqp
brew install -v php70-ev
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

## node version manager
if test ! `which nvm`; then
    brew -v install nvm
    mkdir -p "$HOME/.nvm"
    export NVM_DIR="$HOME/.nvm"
    . `brew --prefix nvm`/nvm.sh
fi
