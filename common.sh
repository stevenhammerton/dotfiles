#!/bin/bash

function createLink {
  if [ ! -e $2 ]; then
    echo "Linking $1 to $2"
    ln -s $1 $2
  fi
}

function gitClone {
  if [ ! -e $2 ]; then
    echo "Cloning $1 to $2"
    git clone $1 $2
  fi
}

function svnCheckout {
  if [ ! -e $2 ]; then
    echo "Checking out $1 to $2"
    svn checkout $1 $2
  fi
}

