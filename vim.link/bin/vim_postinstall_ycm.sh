#!/usr/bin/env sh

if [[ -z $VIM_PLUGINS ]]; then
    echo "\$VIM_PLUGINS variable not defined."
    exit 1
fi

. $VIM_PLUGINS/install.py --clang-completer --gocode-completer || false
