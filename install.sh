#!/usr/bin/env sh


# Paths

DOTFILES=$HOME/.dotfiles


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
if [[ -x `which zsh` ]]; then
  HAS_ZSH=true
fi


# Fetch & install dependencies

git clone git@github.com:hkjels/.dotfiles.git $DOTFILES; cd $DOTFILES
git submodule update --init --recursive
if [[ !$HAS_ZSH ]]; then
  inst zsh
fi
if [[ $IS_MAC && !$HAS_MVIM ]]; then
  inst mvim
fi
if [[ $IS_LINUX && !$HAS_GVIM ]]; then
  inst gvim
fi
vim +BundleInstall +qall


# Link dotfiles to current user

find $DOTFILES -type f -iname "*.link" -exec ln -s {} $HOME \;

