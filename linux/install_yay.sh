#! /bin/bash

echo "###############################################"
echo "INSTALLING YAY"
echo "###############################################"

git clone https://aur.archlinux.org/yay-bin

cd yay-bin

makepkg -sri

cd ..

rm -fr /tmp/yay-bin

#speed up aur makepkg
sed -i '/MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf
