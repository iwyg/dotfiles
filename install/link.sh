#!/bin/sh

set -e

echo $DOTFILES

if [ ! -d $DOTFILES ]; then
    echo "'DOTFILES' variable not set.\nExiting..."
    exit 1;
fi

echo "\ndotfiles at $DOTFILES"

linkfiles=`find -H $DOTFILES -maxdepth 3 -name '*.link'`

echo "\nLinking files now..."

for _file in $linkfiles; do
    file="$HOME/.`basename $_file '.link'`"

    if [[ -L $file ]]; then
        echo "Unlink symlink $file"
        # remove symlink.
        rm $file
    fi

    if [[ -e $file ]]; then
        backupfile="$file.`date +'%s'`.bak";
        echo "\n$file already exists, creating backup $backupfile"
        # move existing file to backup location.
        mv $file $backupfile
    fi

    echo "\nLinking $file -> $_file"

    # linking file
   ln -s $_file $file
done

unset _file
unset file
unset linkfiles
