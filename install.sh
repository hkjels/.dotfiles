#!/usr/bin/env bash


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
  fetch() {
    brew install $*
  }
fi
if [[ -x `which apt-get` ]]; then
  fetch() {
    sudo apt-get install $*
  }
fi
if [[ -x `which yum` ]]; then
  fetch() {
    su -c yum install $*
  }
fi
if [[ -x `which zsh` ]]; then
  HAS_ZSH=true
fi


# Fetch & install dependencies

git clone git@github.com:hkjels/.dotfiles.git $DOTFILES; cd $DOTFILES
git submodule update --init --recursive

# if [[ !$HAS_ZSH ]]; then
#   fetch zsh
# fi
# if [[ $IS_MAC && !$HAS_MVIM ]]; then
#   fetch mvim
# fi
# if [[ $IS_LINUX && !$HAS_GVIM ]]; then
#   fetch gvim
# fi


# Link dotfiles to current user

for file in $(find $DOTFILES -type f -name "*.link"); do ln -is $file $HOME/$(basename ${file%.link}); done
source $HOME/.zshrc

vim +BundleInstall +qall

