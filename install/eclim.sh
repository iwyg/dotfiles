#!/bin/sh

mkdir -p /tmp/dotfiles
cd /tmp/dotfiles
curl -fsSL http://sourceforge.net/projects/eclim/files/eclim/2.5.0/eclim_2.5.0.jar/download

install eclipse
java -Dvim.files=$HOME/.vim -Declipse.home=$ECLIPSE_HOME -jar eclim_2.5.0.jar install

cd -
