
" Toggle relative/absolute numbering
" by Paul Rouget

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

