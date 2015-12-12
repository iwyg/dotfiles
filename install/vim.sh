#!/usr/bin/env sh

CDIR="`pwd`"
VIMDIR="$DOTFILES/vim.link"

## Install Vim Plug:
if [[ ! -e "$VIMDIR/autoload/plug.vim" ]]; then
    curl -fLo "$VIMDIR/autoload/plug.vim" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ ! -d "$VIMDIR/colors/base16" ]]; then
   git submodule add https://github.com/chriskempson/base16-vim "$VIMDIR/colors/base16"
fi

## create symlinks to base 16 colors
cd colors
    ln -s base16/colors/*.vim ./
cd -

#mv $VIMDIR/vimrc $VIMDIR/vimconfig
#mv $VIMDIR/gvimrc $VIMDIR/gvimconfig
rm $HOME/.vimrc
rm $HOME/.gvimrc

#mv $VIMDIR/vimconfig $VIMDIR/vimrc
#mv $VIMDIR/gvimconfig $VIMDIR/gvimrc
# symlink  configuration files
(ln -s $VIMDIR/vimrc $HOME/.vimrc && ln -s $VIMDIR/gvimrc $HOME/.gvimrc) || ln log

# cleanup
