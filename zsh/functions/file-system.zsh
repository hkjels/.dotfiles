
# ls with filenames only in a single column
# Can be used as an array or stdin for editors e.g

ll() { ls $1 | awk {'print $0'} }

# Improved quick-open

oo() {
    if [[ -n $1 ]]; then open $1
    else open .
    fi
}

