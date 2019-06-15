#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "MISC ADMIN"
echo "###############################################"

#speed up aur makepkg
sed -i '/MAKEFLAGS=/c\MAKEFLAGS="-j$(nproc)"' /etc/makepkg.conf
sed -i 's/^#\s*\(%wheel\s\+ALL=(ALL)\s\+NOPASSWD:\s\+ALL\)/\1/' /etc/sudoers
