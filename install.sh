
# Paths

DOTFILES=$HOME/.dotfiles


# Install .dotfiles

echo "\n    Fetching .dotfiles\n"
git clone --recursive https://github.com/hkjels/.dotfiles $DOTFILES &> /dev/null


# Make `pkg install` available

source $DOTFILES/zsh/alias.zsh


# Make that cursor blazing fast

if [[ $(uname) = 'Darwin' ]]; then
  defaults write NSGlobalDomain KeyRepeat -int 0
fi


# Install dependencies

pkg install z ctags &> /dev/null
pkg install node && npm install json jsctags &> /dev/null
pkg install cabal-install && cabal install darcs lushtags &> /dev/null


# Link dotfiles to current user

echo "\n    Creating symlinks\n"
for file in $(find $DOTFILES -type f -name "*.link"); do ln -is $file $HOME/$(basename ${file%.link}); done
echo "\n[include]\n path = ~/.dotfiles/git/.gitconfig\n" >> ~/.gitconfig


# Install vim-bundles

echo "\n    Installing vim dependencies (this might take a while!)\n"
vim +BundleInstall +qall &> /dev/null


source $HOME/.zshrc
echo "\n    Setup complete!\n"

