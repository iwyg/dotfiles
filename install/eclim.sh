#!/usr/bin/env sh

mkdir -p /tmp/dotfiles
cd /tmp/dotfiles
curl -fSL http://sourceforge.net/projects/eclim/files/eclim/2.5.0/eclim_2.5.0.jar/download -o eclim_2.5.0.jar

## install eclim
java -Dvim.files=$HOME/.vim -Declipse.home=$ECLIPSE_HOME -jar eclim_2.5.0.jar install

rm -rf /tmp/dotfiles

cd -
