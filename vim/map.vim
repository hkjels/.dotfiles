
" Change leader
let mapleader = ","
let g:mapleader = ","

" Remove highlighted search-query with
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Sudo like a boss
cmap w!! w !sudo tee % >/dev/null

" Normalize regular-expression searches
nnoremap / /\v
vnoremap / /\v

" Ack
nnoremap <leader>a :Ack 

" TagBar
nnoremap <silent> <F2> :TagbarToggle<CR>

" Set cwd to this file's path
nnoremap <Leader>cd :cd %:h<CR>

" Sideways
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

" Force the use of hjkl keys to move around
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Staying focused
nnoremap <C-f> :call ToggleFocusMode#ToggleFocusMode()<cr>
nnoremap <C-n> :call NumberToggle()<cr>
nnoremap <leader>f :call ToggleSchemeFlavor#ToggleSchemeFlavor()<cr>

" Easy tab-switching
noremap <d-s-right> :tabnext<cr>
noremap <d-s-left> :tabprevious<cr>

" Prevent de-select when indenting blocks
vnoremap < <gv
vnoremap > >gv

" Sparkup
let g:sparkupExecuteMapping = '<c-y>'
let g:sparkupNextMapping = '<c-k>'

" Window manipulation
map <c-w>+ :10winc ><cr>
map <c-w>- :10winc <<cr>

