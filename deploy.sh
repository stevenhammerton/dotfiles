#!/bin/bash

source ~/dotfiles/common.sh

# Link dotfiles
createLink ~/dotfiles/bash/profile ~/.profile
createLink ~/dotfiles/bash/bashrc ~/.bashrc
createLink ~/dotfiles/vim/vimrc ~/.vimrc
createLink ~/dotfiles/git/gitconfig ~/.gitconfig
createLink ~/dotfiles/ssh/config ~/.ssh/config
createLink ~/dotfiles/macos-dock/com.apple.dock.plist ~/Library/Preferences/com.apple.dock.plist
mkdir -p ~/Library/Preferences/IdeaIC2016.1
createLink ~/dotfiles/intellij/codestyles ~/Library/Preferences/IntelliJIdea2016.3/codestyles
createLink ~/dotfiles/intellij/inspection ~/Library/Preferences/IntelliJIdea2016.3/inspection

# Install fonts
cp ./fonts/*.ttf /Library/Fonts

# Install OM Files
gitClone git@gitlab.openmarket.com:steven/om-dotfiles.git ~/om-dotfiles
~/om-dotfiles/deploy.sh
