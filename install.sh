#!/usr/bin/env bash


# Paths

DOTFILES=$HOME/.dotfiles


# Checks

if [[ -x `which zsh` ]]; then
  HAS_ZSH=1
fi
if [[ -x `which brew` && HAS_ZSH -ne 1 ]]; then
  brew install zsh
fi
if [[ -x `which apt-get`  && HAS_ZSH -ne 1 ]]; then
  sudo apt-get install zsh
fi
if [[ -x `which yum`  && !HAS_ZSH -ne 1 ]]; then
  su -c yum install zsh
fi


# Install .dotfiles

echo "\n    Fetch .dotfiles\n"
git clone https://github.com/hkjels/.dotfiles $DOTFILES; cd $DOTFILES
git submodule update --init --recursive


# Link dotfiles to current user

echo -e "\n    Symlink .dotfiles to $HOME\n"
for file in $(find $DOTFILES -type f -name "*.link"); do ln -is $file $HOME/$(basename ${file%.link}); done


# Install vim-bundles

echo "\n    Setup vim with vundle, (this might take a while!)\n"
vim +BundleInstall +qall


# Change shell to zsh

chsh -s /usr/local/bin/zsh $(whoami)

