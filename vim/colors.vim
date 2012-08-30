
" Colors and themes
" see http://vimcolorschemetest.googlecode.com/svn/html/index-c.html
Bundle 'flazz/vim-colorschemes'
Bundle 'skammer/vim-css-color'

" breeze
" molokai
" rdark
" summerfruit256
" wombat256
let g:colors_name='breeze'
execute 'colorscheme ' . g:colors_name

" Additional highlights
highlight ColorColumn guibg=WhiteSmoke
set hlsearch      " highlight search terms
set colorcolumn=0

syntax enable

" Configurations for graphical vim
if has('gui_running')
  set guioptions=-t
endif

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Highlight VCS conflict markers

