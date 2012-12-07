
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

" Javascript
au FileType javascript set dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict

