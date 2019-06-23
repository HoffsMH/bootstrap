#!/usr/bin/bash

set -e

source "./config.sh"

echo "###############################################"
echo "GET UTILS"
echo "###############################################"

pushd "$HOME/code/util"

rm -rf oh-my-zsh
rm -rf spaceship-prompt
rm -rf exenv
rm -rf zsh-autopair
rm -rf spacemacs
rm -rf zsh-syntax-highlighting

git clone git://github.com/robbyrussell/oh-my-zsh.git
git clone git://github.com/denysdovhan/spaceship-prompt.git
git clone git://github.com/mururu/exenv.git
git clone git://github.com/hlissner/zsh-autopair.git
git clone git://github.com/syl20bnr/spacemacs.git
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git

git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/surf

popd
