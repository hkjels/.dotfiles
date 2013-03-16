
" Some file types should wrap their text
function! s:setupWrapping()
  set wrap
  set linebreak
  set textwidth=75
  set nolist
endfunction

"------------------------
" Language configurations
"------------------------

set spell

augroup filetypedetect

  " Apache configurations
  au BufNewFile,BufRead *.conf set filetype=apache

  " Csv
  au BufNewFile,BufRead *.{csv,dat,dsv} set filetype=csv

  " Coffee-script
  au BufNewFile,BufRead *.coffee set filetype=coffee

  " Haskell
  au BufNewFile,BufRead *.hs compiler ghc

  " Ruby
  au BufRead,BufNewFile Gemfile, Rakefile, Vagrantfile, Thorfile set filetype=ruby
  au BufRead,BufNewFile Procfile, Guardfile, config.ru, *.rake set filetype=ruby

  " Jade
  au BufNewFile,BufRead *.jade set filetype=jade

  " Markdown
  au BufNewFile,BufRead *.{md,markdown,mdown,mkd} set filetype=markdown

  " Stylus
  au BufNewFile,BufRead *.styl set filetype=stylus

  " JSON
  au BufNewFile,BufRead *.json set filetype=javascript

augroup END


" Javascript
au FileType javascript set dictionary+=$HOME/.vim/bundle/vim-node/dict/node.dict

au FileType markdown call s:setupWrapping

" Haskell
let g:haddock_browser="open"
let g:haddock_browser_callformat = "%s %s"

" Html
au FileType html set matchpairs+=<:>

