#!/usr/bin/env sh

set -e

source $DOTFILES/util/functions.sh

if [ ! -d $DOTFILES ]; then
    error "'DOTFILES' variable not set.\nExiting..."
    exit 1;
fi

message "dotfiles repository located at $DOTFILES"

linkfiles=`find -H $DOTFILES -maxdepth 3 -name '*.link'`

message "Linking dotfiles"

for _file in $linkfiles; do
    file="$HOME/.`basename $_file '.link'`"

    if [[ -L $file ]]; then
        task "Unlink symlink $file"
        # remove symlink.
        rm $file
    fi

    if [[ -e $file ]]; then
        backupfile="$file.`date +'%s'`.bak";
        warn "$file already exists, creating backup $backupfile"
        # move existing file to backup location.
        mv $file $backupfile
    fi

    task "Linking $file -> $_file"

    # linking file
   ln -s $_file $file
done

unset _file
unset file
unset linkfiles
