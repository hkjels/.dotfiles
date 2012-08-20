
# Open file/directory
#
# Same as zshuery's oo, but o excepts an argument,
# allowing to open something other than '.' without
# launching to windows

function o () {
  if [[ -n $1 ]]; then open $1
  else open .
  fi
}

