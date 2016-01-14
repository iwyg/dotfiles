#!/usr/bin/env sh

if [[ -z $VIM_PLUGINS ]]; then
    echo "\$VIM_PLUGINS variable not defined."
    exit 1
fi

python $VIM_PLUGINS/YouCompleteMe/install.py --clang-completer --gocode-completer --tern-completer
