#!/usr/env sh


# Paths
GITHUB=$HOME/Github
DOTFILES=$GITHUB/dotfiles


# Checks
if [[ $(uname) = 'Linux' ]]; then
    IS_LINUX=true
    if [[ -x `which gvim`  ]]; then
      $HAS_GVIM=true
    fi
fi
if [[ $(uname) = 'Darwin' ]]; then
    IS_MAC=true
    if [[ -x `which mvim`  ]]; then
      $HAS_MVIM=true
    fi
fi
if [[ -x `which brew` ]]; then
    alias inst='brew install'
fi
if [[ -x `which apt-get` ]]; then
    alias inst='sudo apt-get install'
fi
if [[ -x `which yum` ]]; then
    alias inst='su -c yum install'
fi


# Fetch dotfiles
git clone git@github.com:hkjels/.dotfiles.git $DOTFILES

# Link dotfiles to current user
ln -s $DOTFILES/.gitconfig $HOME
ln -s $DOTFILES/.zshrc $HOME
ln -s $DOTFILES/.vimrc $HOME


# Set up vim
git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

# Set up zshuery
git clone git@github.com:hkjels/zshuery.git $GITHUB/zshuery


# Install zsh if it's not installed
if [[ -x `which zsh` ]]; then
  inst zsh
fi


# Install mvim if on a mac and it's not installed
if [[ $IS_MAC && !$HAS_MVIM ]]; then
  inst mvim
fi


# Install gvim if on linux and it's not installed
if [[ $IS_LINUX && !$HAS_GVIM ]]; then
  inst gvim
fi
