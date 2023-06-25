#!/bin/bash

## Setting up themes
mkdir utils
sudo mkdir -p /usr/share/themes /usr/share/icons/ /usr/share/fonts
cd utils
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-gtk-theme-sweet-1.0-4-any.pkg.tar.zst | jq -r '.download_url')
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-gtk-theme-cyberpunk-1.0-4-any.pkg.tar.zst | jq -r '.download_url')
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-gtk-theme-hack-1.0-4-any.pkg.tar.zst | jq -r '.download_url')
tar -xvf archcraft-gtk-theme-cyberpunk-1.0-4-any.pkg.tar.zst
tar -xvf archcraft-gtk-theme-hack-1.0-4-any.pkg.tar.zst 
tar -xvf archcraft-gtk-theme-sweet-1.0-4-any.pkg.tar.zst
sudo mv usr/share/themes/* /usr/share/themes

## Setting up icons
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-icons-zafiro-1.0-5-any.pkg.tar.zst | jq -r '.download_url')
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-icons-luna-1.0-5-any.pkg.tar.zst | jq -r '.download_url')
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-cursor-qogirr-1.0-4-any.pkg.tar.zst | jq -r '.download_url')
wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-cursor-fluent-1.0-4-any.pkg.tar.zst | jq -r '.download_url')
tar -xvf archcraft-icons-zafiro-1.0-5-any.pkg.tar.zst
tar -xvf archcraft-icons-luna-1.0-5-any.pkg.tar.zst
tar -xvf archcraft-cursor-qogirr-1.0-4-any.pkg.tar.zst
tar -xvf archcraft-cursor-fluent-1.0-4-any.pkg.tar.zst
sudo mv usr/share/icons/* /usr/share/icons

## Setting fonts up

wget -c $(curl -s https://api.github.com/repos/archcraft-os/pkgs/contents/x86_64/archcraft-fonts-1.0-6-any.pkg.tar.zst | jq -r '.download_url')
tar -xvf archcraft-fonts-1.0-6-any.pkg.tar.zst

sudo mv usr/share/fonts/* /usr/share/fonts/

cd ..
rm -rf utils
