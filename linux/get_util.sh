#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "GET UTILS"
echo "###############################################"

pushd "~/code/util"

git clone https://github.com/robby-russell/oh-my-zsh.git
git clone https://github.com/denysdovhan/spaceship-prompt.git
git clone https://github.com/mururu/exenv.git
git clone https://github.com/hlissner/zsh-autopair.git
git clone https://github.com/syl20bnr/spacemacs.git

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/surf

popd
