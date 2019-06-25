#!/usr/bin/bash

set -e

source "$HOME/code/util/bootstrap/config.sh"

echo "###############################################"
echo "MISC ADMIN"
echo "###############################################"

#speed up aur makepkg
sudo sed -i '/MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf
sudo sed -i 's/^#\s*\(%wheel\s\+ALL=(ALL)\s\+NOPASSWD:\s\+ALL\)/\1/' /etc/sudoers
sudo sed -i 's/^\s*\(%wheel\s\+ALL=(ALL)\s\+NOPASSWD:\s\+ALL\)/\1/' /etc/sudoers.d/10-installer

sudo systemctl disable.lightdm.service
sudo pacman -Rs lightdm light-locker lightdm-gtk-greeter lightdm-gtk-greeter-settings
