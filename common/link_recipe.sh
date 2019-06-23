#! /bin/bash

set -e

echo "###############################################"
echo "COMMON LINKS"
echo "###############################################"

ln -sf ~/personal/dotfiles/.spacemacs ~/.
ln -sf ~/personal/dotfiles/.gitignore_global ~/.
ln -sf ~/personal/dotfiles/.gitconfig ~/.
ln -sf ~/personal/dotfiles/ssh/config ~/.ssh/config
ln -sf ~/personal/dotfiles/common/.fzf.sh ~/.

ln -sf ~/code/util/oh-my-zsh ~/.oh-my-zsh
ln -sf ~/code/util/spacemacs ~/.emacs.d
