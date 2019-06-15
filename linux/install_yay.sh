#! /bin/bash

echo "###############################################"
echo "INSTALLING YAY"
echo "###############################################"

git clone https://aur.archlinux.org/yay-bin

cd yay-bin

makepkg -sri

cd ..

rm -fr ./yay-bin
