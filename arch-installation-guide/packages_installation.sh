#!/bin/bash

echo 'Installing the most important packages'

sudo pacman -Sy
sudo pacman -S $(cat ./arch_packages.txt)
