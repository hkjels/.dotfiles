
"------------------------
" Language configurations
"------------------------

set spell

augroup filetypedetect

  " Apache configurations
  au BufNewFile,BufReadPost *.conf set filetype=apache

  " Csv
  au BufNewFile,BufReadPost *.csv,*.dat set filetype csv

  au BufEnter *.hs compiler ghc

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
let g:haddock_browser="open"
let g:haddock_browser_callformat = "%s %s"

" Html
au FileType html set matchpairs+=<:>

" Remove trailing whitespace
au FileType c,cpp,php,js,coffee,styl,jade au BufWritePre <buffer> :%s/\s\+$//e

