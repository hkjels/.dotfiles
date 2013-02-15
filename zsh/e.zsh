
# Open file/directory in your editor of choice

function e () {
  if [[ -n $1 ]]; then $EDITOR $1
  else $EDITOR .
  fi
}

