
"--------------------
" Module dependencies
"--------------------

  Bundle 'leshill/vim-json'
  Bundle 'tpope/vim-haml'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'plasticboy/vim-markdown'
  Bundle 'jcf/vim-latex'
  Bundle 'digitaltoad/vim-jade'
  Bundle 'wavded/vim-stylus'
  Bundle 'msanders/cocoa.vim'
  Bundle 'chrisbra/csv.vim'
  Bundle 'kevinw/pyflakes-vim'
  Bundle 'fs111/pydoc.vim'
  Bundle 'vim-scripts/pep8'
  Bundle 'atourino/jinja.vim'
  Bundle 'vim-scripts/python_match.vim'
  Bundle "vim-ruby/vim-ruby"
  Bundle 'tpope/vim-endwise'
  Bundle 'tpope/vim-liquid'


"------------------------
" Language configurations
"------------------------

" Crontab
au FileType crontab setlocal backupcopy=yes

" Markdown
au FileType markdown setlocal wrap linebreak nolist

" Javascript
au FileType javascript,css setlocal expandtab

" Apache configurations
au BufNewFile,BufReadPost *.conf set filetype=apache

" Python
au FileType python let g:pep8_map='<F4>'

" Stylus
au BufNewFile,BufReadPost *.styl set filetype=stylus setlocal expandtab

" Jade
au BufNewFile,BufReadPost *.jade set filetype=jade setlocal expandtab

" Coffeescript
au BufNewFile,BufReadPost *.coffee set filetype=coffee setlocal expandtab
au BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent


"-----------
" Aesthetics
"-----------

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set shiftround
set smarttab
set autoindent
set copyindent
set foldmethod=indent
set foldlevel=99

