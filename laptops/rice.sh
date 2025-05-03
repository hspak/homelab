mkdir -p ~/code/z
curl -o ~/code/z/z.sh https://raw.githubusercontent.com/rupa/z/master/z.sh
touch ~/.z

git clone https://github.com/hspak/dotfiles.git
cd dotfiles
./setup
cd

# WM
PKGS_WM=(hyprland hyprlock hypridle hyprpolkitagent xdg-desktop-portal-hyprland xdg-desktop-portal-gtk xdg-desktop-portal-kde uwsm libnewt)

# Graphics
PKGS_GRAPHICS=(mesa intel-media-driver intel-media-sdk vulkan-intel egl-wayland qt5-wayland qt6-wayland)

# Visual
PKGS_VISUAL=(adw-gtk-theme qt5ct kvantum breeze-icons gnome-themes-extra nwg-look)

# Fonts
PKGS_FONTS=(noto-fonts noto-fonts-extra noto-fonts-emoji noto-fonts-cjk)

# Utils
PKGS_UTILS=(neovim wl-clipboard libnotify ranger pavucontrol pipewire-pulse libcamera pipewire-libcamera bluez dunst)

# Lang
PKGS_LANG=(zls zig go rustup)

sudo pacman -S $PKGS_UTILS $PKGS_FONTS $PKGS_VISUAL $PKGS_GRAPHICS $PKGS_WM $PKGS_UTILS $PKGS_LANG

# AUR
curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import

curl -O https://aur.archlinux.org/cgit/aur.git/snapshot/zur.tar.gz
tar xf zur.tar.gz
cd zur
makepkg -si
cd
rm -rf ~/tmp

zur -S 1password qt6ct-kde google-chrome
