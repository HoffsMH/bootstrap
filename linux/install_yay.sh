#! /bin/bash

git clone https://aur.archlinux.org/yay-bin

cd yay-bin

makepkg -sri

cd ..

rm -fr /tmp/yay-bin
