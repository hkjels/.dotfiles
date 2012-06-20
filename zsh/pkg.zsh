
# Standardize packagemanager

if [[ $(uname) = 'Darwin' ]]; then
  if [[ ! -x `which brew` ]]; then
    /usr/bin/ruby -e "$(/usr/bin/curl -fsSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"
  fi
  alias pkg='brew'
elif [[ -x `which apt-get` ]]; then
  alias pkg='sudo apt-get'
elif [[ -x `which yum` ]]; then
  alias pkg='su -c yum'
else
  alias pkg='echo "\n    Could not reliably detect any packagemanager\n";return'
fi

