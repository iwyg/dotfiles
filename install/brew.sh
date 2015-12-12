#!/usr/bin/env sh

set -e

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
#if [[ '/usr/local/bin/git' == `which git` ]]; then
    #brew uninstall --force git
#fi

brew_or_msg "install -v" "git --HEAD --with-blk-sha1 --with-gettext --with-pcre --with-persistent-https"

# Install tmux
if test ! `which tmux`; then
    brew install tmux
fi

# Install tmux
if test ! `which htop`; then
    brew install htop
fi

# Install tree
if test ! `which tree`; then
    brew install tree
fi

# Install recent git version
if [[ ! `which zsh` == '/usr/local/bin/zsh' ]]; then
    brew_or_msg "install" "zsh"
fi

brew_or_msg "install" "reattach-to-user-namespace"

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
    brew uninstall crags 
fi

message "Installing ctags"
brew install -v ctags --HEAD
brew unlink --force ctags

## install ctags-better-php for better php indexing
curl https://raw.githubusercontent.com/shawncplus/phpcomplete.vim/master/misc/ctags-better-php.rb > /usr/local/Library/Formula/ctags-better-php.rb
brew install -v ctags-better-php
ctags_links=`brew unlink ctags-better-php`
brew link --override ctags

echo $ctag_links

exit

#if [ -e '/usr/local/Cellar/php70' ]; then
#    echo "Unlinking php70..."
#    brew unlink php70
#fi
#
#if [ -e '/usr/local/Cellar/php56' ]; then
#    echo "Relinking php56..."
#    brew unlink php56 && brew link --override php56
#fi

php_versions=`brew list | egrep "^php[5-7][0-9].*?" | xargs`;

if [[ $php_versions ]]; then
    brew uninstall -v --force $php_versions
fi

message "Installing php56..."

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
message "Installing php70..."
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
#
## node version manager
if test ! `which nvm`; then
    brew -v install nvm
    mkdir -p "$HOME/.nvm"
    export NVM_DIR="$HOME/.nvm"
    . `brew --prefix nvm`/nvm.sh
fi
