
"------------------------
" Language configurations
"------------------------

set spell

augroup filetypedetect

  " Apache configurations
  au BufNewFile,BufReadPost *.conf set filetype=apache

  " Csv
  au BufNewFile,BufReadPost *.csv,*.dat set filetype csv

  " Jade
  au BufNewFile,BufReadPost *.jade set filetype=jade

  " Markdown
  au BufNewFile,BufReadPost *.md,*.markdown,*.mdown,*.mkd set filetype=markdown

  " Stylus
  au BufNewFile,BufReadPost *.styl set filetype=stylus

augroup END


" Javascript
au FileType javascript set dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict

" Haskell
au FileType haskell set compiler=/usr/local/bin/ghc
let g:haddock_browser='Safari'

" Html
au FileType html set matchpairs+=<:>

" Remove trailing whitespace
au FileType c,cpp,php,js,coffee,styl,jade au BufWritePre <buffer> :%s/\s\+$//e

