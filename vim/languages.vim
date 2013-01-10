
"------------------------
" Language configurations
"------------------------

set spell

augroup filetypedetect

  " Apache configurations
  au BufNewFile,BufReadPost *.conf set filetype=apache

  " Csv
  au BufNewFile,BufReadPost *.csv,*.dat set filetype csv

  " Markdown
  au BufNewFile,BufReadPost *.md set filetype=markdown

  " Stylus
  au BufNewFile,BufReadPost *.styl set filetype=stylus

augroup END


" Javascript
au FileType javascript set dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict

" Haskell
au FileType haskell set compiler=ghc

" Html
au FileType html set matchpairs+=<:>

