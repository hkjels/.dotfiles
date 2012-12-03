
"------------------------
" Language configurations
"------------------------

" Markdown
au BufNewFile,BufReadPost *.md set filetype=markdown

" Bundles file
au BufNewFile,BufReadPost *.bundles set filetype=vim

" Apache configurations
au BufNewFile,BufReadPost *.conf set filetype=apache

" Stylus
au BufNewFile,BufReadPost *.styl set filetype=stylus

" Jade
au BufNewFile,BufReadPost *.jade set filetype=jade

" Coffeescript
au BufNewFile,BufReadPost *.coffee set filetype=coffee


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
set smartindent

