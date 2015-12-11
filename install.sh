#!/bin/sh

set -e

export DOTFILES=`cd \`dirname "${BASH_SOURCE[0]}"\` && pwd`

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

git submodule update --init --recursive

## linking dotfiles
. $DOTFILES/install/link.sh

if [ `uname` == 'Darwin' ]; then
    # write default settings
    . $DOTFILES/osx/settings.sh
    # install homebrew packages
    . $DOTFILES/install/brew.sh $NONEOVIM $GVIM
    # install homebrew packages
    . $DOTFILES/install/cask.sh

else
    echo "OS currently not supported"
    exit 1
fi

# set zsh as the default shell
echo "Changing shell to ZSH"
chsh -s `which zsh`
# Install Oh my ZSH
echo "Installing Oh My Zsh..."
. $DOTFILES/install/zsh.sh
# configure vim
echo "Configuring VIM..."
. $DOTFILES/install/vim.sh

if [ "$NONEOVIM" == NO ]; then
    . $DOTFILES/install/neovim.sh
fi
