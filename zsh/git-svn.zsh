
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
        (*)
            echo $* | xargs git
        ;;
    esac
}

