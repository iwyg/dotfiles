#!/usr/bin/env sh

set -e

usage() {
cat <<EOF
Usage: install.sh [options...]

Options:
  -h, --help, ?         Shows this dialog.
      --without-neovim  Skips installing, or upgrading NeoVim.
      --with-gvim       Installs MacVim (or GVim).
EOF
}

warn() {
    printf "\e[33mWARNING:\e[m %-6s\n" "$1"  >&2
}

error() {
    printf "\e[31mERROR:\e[m %-6s\n" "$1" >&2
}

message() {
    printf "\e[0;34m%-6s\e[m\n" "$1" >&2
}

task() {
    printf "%-6s\n" "$1" >&2
}

get_action_type() {
    set -- $1
    local type=$1
    local action=''
    local cmds=install reinstall update upgrade uninstall remove list

    for i in "$cmds"; do
        case $type in
        install)
            action='Installing'
            shift 1
            continue
        ;;
        reinstall)
            action='Re-Installing'
            shift 1
            continue
        ;;
        update)
            action='Updating'
            shift 1
            continue
        ;;
        upgrade)
            action='Upgrading'
            shift 1
            continue
        ;;
        uninstall)
            action='Uninstalling'
            shift 1
            continue
        ;;
        remove)
            action='Removing'
            shift 1
            continue
        ;;
        list)
            action='Listing'
            shift 1
            continue
        ;;
        *)
            error "Unknowen command $type"
            return 1
        ;;
        esac
    shift
    done

    echo $action
}


install_neovim=true
install_gvim=false

for key in "$@"; do
    key="$1"
    case $key in
        --help|-h|\?)
        usage
        exit 0
        ;;
        --without-neovim)
        install_neovim=false
        shift 1
        continue
        ;;
        --with-gvim)
        install_gvim=true
        shift 1
        continue
        ;;
        *)
        error "Invalid argument $key"
        exit 1
        ;;
esac
    shift
done

export DOTFILES=`cd \`dirname "${BASH_SOURCE[0]}"\` && pwd`

message "fetching git submodule..."

git submodule update --init --recursive

## linking dotfiles
. $DOTFILES/install/link.sh

if [ `uname` == 'Darwin' ]; then
    # write default settings
    message "configure os x settings..."
    . $DOTFILES/osx/settings.sh
    # install homebrew packages

    message "installing brews..."
    . $DOTFILES/install/brew.sh $install_neovim $install_gvim
    # install homebrew packages
    message "installing casks..."
    . $DOTFILES/install/cask.sh

else
    error "OS currently not supported"
    exit 1
fi

if test ! `which composer`; then
    message "Installing composer"
    curl -fSL https://getcomposer.org/installer | php
fi

# set zsh as the default shell
if [[ -e `which zsh` ]]; then
    message "Changing shell to ZSH"
    chsh -s `which zsh`
fi

# Install Oh my ZSH
message "Installing Oh My Zsh..."
. $DOTFILES/install/zsh.sh
# configure vim
message "Configuring VIM..."
. $DOTFILES/install/vim.sh

if [ "$NONEOVIM" == NO ]; then
    . $DOTFILES/install/neovim.sh
fi
