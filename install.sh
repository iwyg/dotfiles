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

if [[ ! -f "$install_link" ]]; then
	echo "\n Linking files failed, aborting"
	exit 1;
fi

git submodule update --init --recursive

source $install_link
unset install_link

## install homebrew stuff
if [ `uname` == 'Darwin' ]; then
	source "`$DOTFILES/install/brew.sh $NONEOVIM $GVIM`"
else
	echo "OS currently not supported"
	exit 1
fi

exit 0
