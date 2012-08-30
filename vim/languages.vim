
" Syntaxes and such
Bundle 'leshill/vim-json'
Bundle 'tpope/vim-haml'
Bundle 'kchmck/vim-coffee-script'
Bundle 'plasticboy/vim-markdown'
Bundle 'jcf/vim-latex'
Bundle 'digitaltoad/vim-jade'
Bundle 'wavded/vim-stylus'
Bundle 'msanders/cocoa.vim'
Bundle 'chrisbra/csv.vim'

" Python bundles
Bundle 'kevinw/pyflakes-vim'
Bundle 'fs111/pydoc.vim'
Bundle 'vim-scripts/pep8'
Bundle 'atourino/jinja.vim'
Bundle 'vim-scripts/python_match.vim'

" Ruby specific
Bundle "vim-ruby/vim-ruby"
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-liquid'


" Language configurations
"""""""""""""""""""""""""

" General
autocmd BufWritePost .vimrc source %
autocmd FileType * setlocal colorcolumn=80

" Crontab
autocmd FileType crontab setlocal backupcopy=yes

" Markdown
autocmd FileType markdown setlocal wrap linebreak nolist

" Javascript
autocmd FileType javascript,css setlocal expandtab

" Apache configurations
autocmd BufNewFile,BufReadPost *.conf set filetype=apache

" PHP
autocmd FileType php setlocal colorcolumn=100

" Python
autocmd FileType python let g:pep8_map='<F4>'

" Stylus
autocmd BufNewFile,BufReadPost *.styl set filetype=stylus

" Jade
autocmd BufNewFile,BufReadPost *.jade set filetype=jade

" Coffeescript
autocmd BufNewFile,BufReadPost *.coffee set filetype=coffee
au BufNewFile,BufReadPost *.coffee setlocal foldmethod=indent


" Aesthetics
""""""""""""

" Tabs & spaces
set tabstop=2     " a tab is four spaces
set shiftwidth=2  " number of spaces to use for autoindenting
set softtabstop=2
set expandtab
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set foldmethod=indent " General Code Folding
set foldlevel=99

