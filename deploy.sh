#!/bin/bash

source ~/dotfiles/common.sh

# Link dotfiles
createLink ~/dotfiles/bash/profile ~/.profile
createLink ~/dotfiles/bash/bashrc ~/.bashrc
createLink ~/dotfiles/vim/vimrc ~/.vimrc
createLink ~/dotfiles/git/gitconfig ~/.gitconfig

# Install fonts
cp ./fonts/*.ttf /Library/Fonts

# Install OM Files
gitClone git@gitlab.openmarket.com:steven/om-dotfiles.git ~/om-dotfiles
~/om-dotfiles/deploy.sh
