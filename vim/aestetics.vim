
"--------------------
" Module dependencies
"--------------------

Bundle 'hkjels/focus.vim'


"---------------------
" Activate colorscheme
"---------------------

syntax enable
set background=light
colorscheme focus


"------------------------
" Additional highlighting
"------------------------

set hlsearch                                      " highlight search terms
set number                                        " show line-numbers
set colorcolumn=75                                " practice short code
set nowrap                                        " don't wrap lines
set showmatch                                     " show matching parenthesis
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'  " Highlight VCS conflicts


" Hide toolbar when using graphical vim
if has('gui_running')
  set guioptions=-t
endif

