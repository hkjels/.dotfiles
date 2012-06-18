#!/usr/bin/env bash


# Paths

DOTFILES=$HOME/.dotfiles


# Configure installer

if [[ -x `which brew` ]]; then
  fetch () {
    brew install $*
  }
elif [[ -x `which apt-get`  && HAS_ZSH -ne 1 ]]; then
  fetch () {
    sudo apt-get install $*
  }
elif [[ -x `which yum`  && !HAS_ZSH -ne 1 ]]; then
  fetch () {
    su -c yum install $*
  }
else
  echo -e "\n    Could not reliably detect a packagemanager\n"
  exit 1
fi


# Install dependencies

if [[ ! -x `which zsh` ]]; then
  fetch zsh
fi
if [[ ! -x `which j` ]]; then
  fetch autojump
fi

return

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

