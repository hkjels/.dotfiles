#!/usr/bin/env zsh


# Paths

DOTFILES=$HOME/.dotfiles


# Removal

for file in $(find $DOTFILES -type f -name "*.link"); do rm -f $HOME/${$(basename $file)/.link/}; done
rm -Rf $DOTFILES


# Not uninstalled

echo -e "\n    zsh and (mvim|gvim) was not uninstalled. You will have to do that manually\n"

