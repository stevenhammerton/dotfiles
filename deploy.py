#!/usr/bin/python

import os

def link_if_not_exists(sourcePath, linkPath):
    absoluteSourcePath = os.path.expanduser(sourcePath)
    absoluteLinkPath = os.path.expanduser(linkPath)

    if (not os.path.exists(absoluteLinkPath)):
        os.symlink(absoluteSourcePath, absoluteLinkPath)


# Profile & Bash
link_if_not_exists("~/dotfiles/bash/profile",    "~/.profile")
link_if_not_exists("~/dotfiles/bash/bashrc",     "~/.bashrc")

# Vim
link_if_not_exists("~/dotfiles/vim/vimrc",       "~/.vimrc")

# Git
link_if_not_exists("~/dotfiles/git/gitconfig",   "~/.gitconfig")
