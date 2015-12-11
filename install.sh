#!/bin/sh

set -e

export DOTFILES=`cd \`dirname "${BASH_SOURCE[0]}"\` && pwd`

exit 0
while [[ $# > 1 ]]; do
    key="$1"
    case $key in
        --without-neovim)
        NONEOVIM=YES
        ;;
        --with-gvim)
        GVIM=YES
        ;;
        --default)
        NONEOVIM=NO
        GVIM=NO
        ;;
        esac
    shift # past argument or value
done

install_link="$DOTFILES/install/link.sh"

if [[ ! -e "$install_link" ]]; then
    echo "\n Linking files failed, aborting"
    exit 1;
fi

git submodule update --init --recursive

source $install_link
unset install_link

if [ `uname` == 'Darwin' ]; then
    # install homebrew packages
    source "`$DOTFILES/install/brew.sh $NONEOVIM $GVIM`"
    # write default settings
    source "`$DOTFILES/osx/settings.sh`"
else
    echo "OS currently not supported"
    exit 1
fi

# set zsh as the default shell
chsh -s `which zsh`
# Install Oh my ZSH
source "$DOTFILES/install/zsh.sh"
# configure vim
source "$DOTFILES/install/vim.sh"

exit 0
