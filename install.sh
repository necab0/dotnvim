#!/bin/bash

if ! ( hash git 2>/dev/null ); then
    echo "Please install git"
    exit 1
fi

DOTNVIM=~/.nvim
NVIM=~/.config/nvim

echo "Drop all existing plugins?"
read -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf $DOTNVIM/autoload
    curl -LSso $DOTNVIM/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    rm -rf $DOTNVIM/plugged
fi

echo "About to wipe your $NVIM."
read -p "Proceed? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm -rf $NVIM
    ln -s $DOTNVIM $NVIM
    # install all plugins
    echo "Installing plugins. This may take a while."
    nvim --headless +PlugInstall +qa
    echo "Done."
fi

