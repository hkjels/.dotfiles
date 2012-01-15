source $HOME/Github/zshuery/zshuery.sh
load_defaults
load_aliases
load_lol_aliases
load_completion $HOME/Github/zshuery/completion
load_correction

prompts '%{$fg_bold[green]%}$(COLLAPSED_DIR)%{$reset_color%}$(virtualenv_info) %{$fg[yellow]%}λ%{$reset_color%} ' '%{$fg[red]%}$(ruby_version)%{$reset_color%}'

if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='mvim'
else
    export EDITOR='vim'
fi

chpwd() {
    update_terminal_cwd
}