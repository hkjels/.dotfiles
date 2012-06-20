
# Improved quick-open

oo() {
    if [[ -n $1 ]]; then open $1
    else open .
    fi
}

