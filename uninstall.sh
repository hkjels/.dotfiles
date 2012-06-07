#!/usr/local/bin/env bash


# Paths

DOTFILES=$HOME/.dotfiles


# Removal

cd $HOME
for file in $(find $DOTFILES -type f -name "*.link"); do rm -f $HOME/$(basename ${file%.link}); done
rm -Rf $DOTFILES

