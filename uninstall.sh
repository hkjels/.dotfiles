#!/usr/local/bin/zsh


# Paths

DOTFILES=$HOME/.dotfiles


# Removal

cd $HOME
for file in $(find $DOTFILES -type f -name "*.link"); do rm -f $HOME/${$(basename $file)/.link/}; done
rm -Rf $DOTFILES


# Not uninstalled

echo -e "\n    zsh and (mvim|gvim) was not uninstalled. You will have to do that manually\n"

