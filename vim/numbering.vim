
" Toggle between relative / absolute line-numbers
fun! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfun

" Absolute numbering when focus to the document
" is lost.
:au FocusLost   * :set number
:au FocusGained * :set relativenumber

" Absolute numbering in insert-mode
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

