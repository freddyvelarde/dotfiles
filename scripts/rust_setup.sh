#!/bin/bash

# echo "Installing rust:"

sudo pacman -Rsn rust rustup rustc
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source "$HOME/.cargo/env"
