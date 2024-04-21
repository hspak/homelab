#!/bin/bash
#
# Stuff that I will probably never get to:
# - Some wifi network automation stuff
# - fprint stuff
# - manual overrides
#   - start iwd with a delay to workaround some iwlwifi stack trace during boot

sudo pacman -Syy

sudo pacman -S \
  base-devel go mpv ranger curl \
  plasma kde-applications sddm sddm-kcm neovim python-neovim noto-fonts noto-fonts-emoji \
  firefox firefox-i18n-ko firefox-i18n-en-us \
  iw crda zsh usbutils man-db bluez-utils \
  tailscale wl-clipboard

sudo pacman -Rsn falkon kmix angelfish konqueror marble

# Bootstrap AUR helper
# mkdir -p ~/tmp
# cd ~/tmp

# TODO: changeme - I don't like how this is packaged
# curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/zig-master-bin.tar.gz
# tar xf zig-master-bin.tar.gz
# cd zig-master-bin
# makepkg -si
# 
# cd ..
# curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/zur.tar.gz
# tar xf zur.tar.gz
# cd zur
# makepkg -si
# cd
# rm -rf ~/tmp

mkdir -p ~/code/z
curl -o ~/code/z/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
touch ~/.z

# Just install all the fonts
sudo pacman -S \
  noto-fonts-extra ttf-fira-sans ttf-fira-mono \
  ttf-croscore ttf-roboto ttf-inconsolata ttf-opensans
# sudo zur -S ttf-merriweather ttf-merriweather-sans ttf-oswald ttf-quintessential ttf-signika

git clone https://github.com/hspak/dotfiles.git
cd dotfiles
./setup
cd

systemctl enable --user ssh-agent

# passwords
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import
# zur -S 1password
