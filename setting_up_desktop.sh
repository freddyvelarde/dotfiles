#!/bin/bash

# echo "Installing rust:"
#
# sudo pacman -Rsn rust
# sudo pacman -Rsn rustup
# sudo pacman -Rsn rustc
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#
# source "$HOME/.cargo/env"
#
echo "Installing important packages:"

sudo pacman -S $(cat ./arch-installation-guide/arch_packages.txt) 

echo "Setting up nerd-fonts:"

sudo cp -r ./nerd-fonts/ /usr/share/fonts/

echo "Setting up my dotfiles into the new linux os"
