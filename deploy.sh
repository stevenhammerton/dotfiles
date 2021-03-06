#!/bin/bash

source ~/dotfiles/common.sh

# Link dotfiles
createLink ~/dotfiles/bash/profile ~/.profile
createLink ~/dotfiles/bash/bashrc ~/.bashrc
createLink ~/dotfiles/vim/vimrc ~/.vimrc
createLink ~/dotfiles/git/gitconfig ~/.gitconfig
createLink ~/dotfiles/ssh/config ~/.ssh/config

rm ~/Library/Preferences/com.googlecode.iterm2.plist
createLink ~/dotfiles/iterm2/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist

# Install fonts
cp ./fonts/*.ttf /Library/Fonts

# Install OM Files
gitClone git@gitlab.openmarket.com:steven/om-dotfiles.git ~/om-dotfiles
~/om-dotfiles/deploy.sh
