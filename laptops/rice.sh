#!/bin/bash

# Tools
sudo pacman -S base-devel zig

mkdir -p ~/code/z
curl -o ~/code/z/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
touch ~/.z

git clone https://github.com/hspak/dotfiles.git
cd dotfiles
./setup
cd

# Essentials
sudo pacman -S firefox neovim

# WM
sudo pacman -S hyprland uwsm libnewt

# Fonts
sudo pacman -S noto-fonts noto-fonts-extra noto-fonts-emoji

# AUR
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import

curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/zur.tar.gz
tar xf zur.tar.gz
cd zur
makepkg -si
cd
rm -rf ~/tmp

zur -S 1password
