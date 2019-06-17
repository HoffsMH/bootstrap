#! /bin/bash

set -e

echo "###############################################"
echo "INSTALLING YAY"
echo "###############################################"

mkdir ~/builds

git clone https://aur.archlinux.org/yay-bin ~/builds/

pushd ~/builds/yay-bin

makepkg -sri --noconfirm

popd

rm -fr ~/builds/yay-bin
