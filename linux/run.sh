#!/usr/bin/bash

# wifi-menu
# timedatectl set-ntp true
# lsblk
# fdisk
# mkfs.ext4 /dev/sda1 ..
# mkswap /dev/sda2
# swapon /dev/sda2

# 200M for boot
# 1.5x ram for swap
# 50G  for /mnt
# rest for home

# mount /dev/sda3 /mnt
# mount /dev/sda1 /mnt/root
# mount /dev/sda4 /mnt/boot
# mount /dev/sda2 /mnt/home

source "./config.sh"

pacman -S --noconfirm \
       fzf \
       fasd \
       jq \
       firefox \
       neofetch \
       openssh \
       sudo \
       networkmanager \
       grub \
       figlet \
       zsh \
       the_silver_searcher


adduser $USERNAME

mkdir -p "$USER_HOME/code/util/aur" \
         "$USER_HOME/code/util/" \
         "$USER_HOME/code/paid/" \
         "$USER_HOME/code/fun/" \
         "$PERSONAL_DIR/00-capture" \
         "$PERSONAL_DIR/01-schedule"

# install and aurutils for later scripts
git clone $DOTFILES_REPO "$PERSONAL_DIR/dotfiles"

pacman -S networkmanager
nmcli device wifi connect $WIFI_SSID password $WIFI_PASSWORD

systemctl enable NetworkManager

grub-install --target=$GRUB_TARGET /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# set which locales are downloaded
sed -i '/en_US.UTF-8 UTF-8/c\en_US.UTF-8 UTF-8' /etc/locale.gen
sed -i '/en_US ISO-8859-1/c\en_US ISO-8859-1' /etc/locale.gen

#generate?
locale-gen

# Set locales
echo "LANG=en-US.UTF-8" >> /etc/locale.conf

# Timezones
ln -sf "/usr/share/zoneinfo/$TIMEZONE" /etc/localtime

echo $HOSTNAME > /etc/hostname

#speed up aur makepkg
sed -i '/MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf

# Go into user not root anymore
passwd $USERNAME

su $USERNAME

./install_yay.sh

yay -S --noconfirm \
    nerd-fonts-complete \
    nodenv \
    nodenv-node-build

cd ~/code/util

git clone https://github.com/robby-russell/oh-my-zsh.git
git clone https://github.com/denysdovhan/spaceship-prompt.git
git clone https://github.com/mururu/exenv.git

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/surf

cd ~

# arch linux dotfile link recipe
link all the things
ln -sf ~/personal/dotfiles/.spacemacs ~/.
ln -sf ~/personal/dotfiles/.gitignore_global ~/.
ln -sf ~/personal/dotfiles/.gitconfig ~/.
ln -sf ~/personal/dotfiles/ssh/config ~/.ssh/config

ln -sf ~/code/util/oh-my-zsh ~/.oh-my-zsh
ln -sf ~/code/util/spacemacs ~/.emacs.d

exit

umount -R /mnt
