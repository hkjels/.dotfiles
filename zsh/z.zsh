
. `brew --prefix`/etc/profile.d/z.sh

function precmd () {
  _z --add "$(pwd -P)"
}

