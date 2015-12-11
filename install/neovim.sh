#!/bin/sh

function install_nvim_osx() {
    $(which brew) install -v neovim --HEAD
}

function install_nvim_ubuntu() {
    # To be able to use add-apt-repository you may need to install software-properties-common:
    sudo apt-get install software-properties-common
    sudo add-apt-repository ppa:neovim-ppa/unstable
    sudo apt-get update
    sudo apt-get install neovim

    # pythin tools
    sudo apt-get install python-dev python-pip python3-dev python3-pip

    # install neovim python modules
    # see :help nvim_python
    pip3 install --user neovim

    # If you want to use Neovim for some (or all) of the editor alternatives, use the following commands:
    #sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
    #sudo update-alternatives --config vi
    #sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
    #sudo update-alternatives --config vim
    #sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
    #sudo update-alternatives --config editor
}
