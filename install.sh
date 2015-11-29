#!/bin/bash

set -e

pwd=$PWD

src=`ls $pwd/src`

cd $HOME;

for file in $src; do
	echo .$file
	`rm -rf .$file`
	`ln -s dotfiles/src/$file .$file`
done

# if vimdir exists, exit with error

echo "Installin Vim"

if [[ ! -d $HOME/.vim ]]; then
	# Clone dotvim
	git clone https://github.com/iwyg/dotvim.git $HOME/.vim
	cd $HOME/.vim
	#echo 'install vim'
	#echo 'install NeoVim'
fi

if [[ ! -d $HOME/.conig ]]; then
	`mkdir -p $HOME/.config`
fi

cd .config

rm -rf nvim 
ln -s ../.vim nvim

cd -

cd $pwd;

echo 'bye'
exit 0
