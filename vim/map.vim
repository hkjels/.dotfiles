
" Change leader
let mapleader = ","
let g:mapleader = ","

" Get rid of search hilighting with ,/
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Fix those pesky situations where you edit & need sudo to save
cmap w!! w !sudo tee % >/dev/null

" Normal regular-expressions search
nnoremap / /\v
vnoremap / /\v

" Ack
nnoremap <leader>a :Ack

" NERDTree
nnoremap <Leader>g :NERDTreeToggle<CR>

" TagBar
nnoremap <silent> <F2> :TagbarToggle<CR>

" Set cwd to this file's path
nnoremap <Leader>cd :cd %:h<CR>

" Sideways
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>

" Force the use of hjkl keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Staying focused
nnoremap <F4> :call ToggleFocusMode()<cr>
nnoremap <F10> :call NumberToggle()<cr>

" Easy tab-switching
noremap <d-s-right> :tabnext<cr>
noremap <d-s-left> :tabprevious<cr>

" Prevent de-select when indenting blocks
vnoremap < <gv
vnoremap > >gv

" Sparkup
let g:sparkupExecuteMapping = '<c-y>'
let g:sparkupNextMapping = '<c-k>'

