
# Autojump

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
elif [ -f /usr/share/autojump/autojump.zsh ]; then
    . /usr/share/autojump/autojump.zshfi
fi

