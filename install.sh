#!/usr/bin/env bash


# Paths

DOTFILES=$HOME/.dotfiles


# Install .dotfiles

echo "\n    Fetch .dotfiles\n"
git clone --recursive https://github.com/hkjels/.dotfiles $DOTFILES; cd $DOTFILES


# Make `pkg install` available

source $DOTFILES/zsh/pkg.zsh


# Make that cursor blazing fast

if [[ $(uname) = 'Darwin' ]]; then
  defaults write NSGlobalDomain KeyRepeat -int 0
fi


# Install dependencies

if [[ ! -x `which zsh` ]]; then
  pkg install zsh
fi
if [[ ! -x `which z` ]]; then
  pkg install z
fi
if [[ ! -x `which ctags` ]]; then
  pkg install ctags
fi


# Link dotfiles to current user

echo "\n    Symlink .dotfiles to $HOME\n"
for file in $(find $DOTFILES -type f -name "*.link"); do ln -is $file $HOME/$(basename ${file%.link}); done
echo "\n[include]\n path = ~/.dotfiles/git/.gitconfig\n" >> ~/.gitconfig


# Install vim-bundles

echo "\n    Setup vim with vundle, (this might take a while!)\n"
vim +BundleInstall +qall


# Change shell to zsh

chsh -s /usr/local/bin/zsh $(whoami)
/usr/local/bin/zsh
