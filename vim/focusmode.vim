
""" FocusMode by Paul Rouget

function! ToggleFocusMode()
  if (&foldcolumn != 12)
    set colorcolumn=0
    set laststatus=0
    set foldcolumn=12
    set noruler
    set nonumber
    set numberwidth=10
    hi FoldColumn ctermbg=none
    hi LineNr ctermfg=0 ctermbg=none
    hi NonText ctermfg=0
  else
    set colorcolumn=75
    set laststatus=2
    set foldcolumn=0
    set ruler
    set number
    set numberwidth=4
    execute 'colorscheme ' . g:colors_name
  endif
endfunc

