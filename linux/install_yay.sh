#! /bin/bash

set -e

echo "###############################################"
echo "INSTALLING YAY"
echo "###############################################"

mkdir ~/code/util/yay-bin

git clone https://aur.archlinux.org/yay-bin ~/code/util/yay-bin

pushd ~/code/util/yay-bin

makepkg -sri --noconfirm

popd

rm -fr ~/code/util/yay-bin
