
# Vim-styled input for the commandline
bindkey -v

# Search backwards and forwards with a pattern
bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward

# set up for insert mode too
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

# Add some convenient emacs-like shortcuts back
bindkey "" beginning-of-line
bindkey "" end-of-line
bindkey "" backward-char
bindkey "" forward-char
bindkey "" backward-word
bindkey "" forward-word
bindkey "" kill-line

