
"---------------------
" Activate colorscheme
"---------------------

  syntax enable
  set t_Co=256
  set background=dark
  colorscheme focus


"------------------------
" Additional highlighting
"------------------------

  set hlsearch                                      " highlight search terms
  set number                                        " show line-numbers
  set colorcolumn=76                                " practice short code
  set nowrap                                        " don't wrap lines
  set showmatch                                     " show matching parenthesis
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'  " Highlight VCS conflicts


"---------------
" OCD must haves
"---------------

  " Hide toolbar when using graphical vim
  if has('gui_running')
    set guioptions=-t
  endif

  set wrap linebreak
  set scrolloff=10
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set shiftround
  set smarttab
  set autoindent
  set copyindent
  set smartindent
  set foldmethod=indent
  set foldlevel=99
  set splitbelow
  set splitright
  set list listchars=tab:→\ ,trail:·


"------------------------
" Improved the statusline
"------------------------

  set statusline=%<%f\ %{fugitive#statusline()}\ 
  set statusline+=%h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\
  set statusline+=%h%m%r%=%-40(,%n%Y%)\%P
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs = 1

