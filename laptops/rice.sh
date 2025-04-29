# Tools
sudo pacman -S base-devel zig

mkdir -p ~/code/z
curl -o ~/code/z/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
touch ~/.z

git clone https://github.com/hspak/dotfiles.git
cd dotfiles
./setup
cd

# WM
PKGS_WM="hyprland hyprlock hypridle hyprpolkitagent xdg-desktop-protal-hyprland uwsm libnewt"

# Graphics
PKGS_GRAPHICS="mesa intel-media-driver vulkan-intel"

# Visual
PKGS_VISUAL="adw-gtk-theme qt5ct qt6ct kvantum breeze-icons"

# Fonts
PKGS_FONTS="noto-fonts noto-fonts-extra noto-fonts-emoji"

# Utils
PKGS_ESSENTIALS="firefox neovim wl-clipboard libnotify ranger"

sudo pacman -S $PKGS_UTILS $PKGS_FONTS $PKGS_VISUAL $PKGS_GRAPHICS $PKGS_WM $PKGS_ESSENTIALS

# AUR
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import

curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/zur.tar.gz
tar xf zur.tar.gz
cd zur
makepkg -si
cd
rm -rf ~/tmp

zur -S 1password qt6ct
