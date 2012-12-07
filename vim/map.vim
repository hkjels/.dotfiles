
" Change leader
let mapleader = ","
let g:mapleader = ","

" Remove highlighted search-query with
nnoremap <silent> <leader>/ :nohlsearch<CR>

" Sudo like a boss
cmap w!! w !sudo tee % >/dev/null
cmap x!! x !sudo tee % >/dev/null

" Normalize regular-expression searches
nnoremap / /\v
vnoremap / /\v

" Center screen on alternative navigation
nnoremap n nzz
nnoremap } }zz

" Expected behavior of yank
nnoremap Y y$

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

" Quick-open directory
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>

" Window manipulation
map <c-w>+ :10winc ><cr>
map <c-w>- :10winc <<cr>


if has("gui_macvim") && has("gui_running")
  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt
else
  " Map Control-# to switch tabs
  map  <C-0> 0gt
  imap <C-0> <Esc>0gt
  map  <C-1> 1gt
  imap <C-1> <Esc>1gt
  map  <C-2> 2gt
  imap <C-2> <Esc>2gt
  map  <C-3> 3gt
  imap <C-3> <Esc>3gt
  map  <C-4> 4gt
  imap <C-4> <Esc>4gt
  map  <C-5> 5gt
  imap <C-5> <Esc>5gt
  map  <C-6> 6gt
  imap <C-6> <Esc>6gt
  map  <C-7> 7gt
  imap <C-7> <Esc>7gt
  map  <C-8> 8gt
  imap <C-8> <Esc>8gt
  map  <C-9> 9gt
  imap <C-9> <Esc>9gt
endif

