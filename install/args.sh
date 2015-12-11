#!/bin/sh

while [[ $# > 1 ]]
do
key="$1"

NEOVIM=NO
GVIM=NO
case $key in
    --with-neovim)
    NEOVIM=YES
    ;;
    --with-gvim)
    GVIM=YES
    ;;
esac
shift # past argument or value
done
