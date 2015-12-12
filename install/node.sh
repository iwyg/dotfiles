#!/usr/bin/env sh

if [[ 'none' == `nvm current | xargs` ]]; then
    # get the latest version of nvm and install it
    nvm install `nvm ls-remote | tail -n1 | xargs`
else
    message "node `nvm current | xargs` is already installed."
fi
