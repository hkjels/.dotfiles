
" Colors and themes
" see http://vimcolorschemetest.googlecode.com/svn/html/index-c.html
Bundle 'flazz/vim-colorschemes'
Bundle 'skammer/vim-css-color'
colorscheme summerfruit256
" colorscheme colorful
" colorscheme molokai
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red

" Configurations for graphical vim
if has('gui_running')
  set guioptions=-t
  set background=light
else
  set background=dark
endif

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Highlight VCS conflict markers

