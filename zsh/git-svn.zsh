
# s
#
# A helper for use with git-svn

s() {
    git_aliases=($(git config --get-regexp alias | sed -e s/alias\.//g))
    IFS='
'

    # Expand git aliases
    for cmd in $git_aliases; do
        g_cmd=$(echo $cmd | cut -d " " -f2-)
        g_alias=$(echo $cmd | awk {'print $1'})
        if [[ $g_alias == $1 ]]; then
            shift
            s $g_cmd $@
            return
        fi
    done

    # Pre hooks
    if [[ -x "$(git root)/.git/hooks/pre-svn-$1" ]] then
        $(git root)/.git/hooks/pre-svn-$1 2>&1
        if [[ $? -eq 1 ]] then; return; fi
    fi

    # git-svn procedures
    case $1 in
        (rebase|fetch|\-\-help|tag|log|find\-rev|(create|show)\-ignore|mkdirs\\
        |blame|info|prop(list|get)|show-externals|gc|reset)
            git svn $*
        ;;
        ("push")
            shift
            git svn dcommit $@
        ;;
        ("pull")
            shift
            git svn rebase
        ;;
        (*)
            echo $* | xargs git
        ;;
    esac

    # Post hooks
    if [[ -x "$(git root)/.git/hooks/post-svn-$1" ]] then
        $(git root)/.git/hooks/post-svn-$1
    fi
}

