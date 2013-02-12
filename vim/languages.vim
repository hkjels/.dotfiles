
"------------------------
" Language configurations
"------------------------

set spell

augroup filetypedetect

  " Apache configurations
  au BufNewFile,BufRead *.conf set filetype=apache

  " Csv
  au BufNewFile,BufRead *.csv,*.dat set filetype=csv

  " Coffee-script
  au BufNewFile,BufRead *.coffee set filetype=coffee

  " Haskell
  au BufNewFile,BufRead *.hs compiler ghc

  " Jade
  au BufNewFile,BufRead *.jade set filetype=jade

  " Markdown
  au BufNewFile,BufRead *.md,*.markdown,*.mdown,*.mkd set filetype=markdown

  " Stylus
  au BufNewFile,BufRead *.styl set filetype=stylus

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

