
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

  set scrolloff=10
  set tabstop=2
  set shiftwidth=2
  set softtabstop=2
  set expandtab
  set shiftround
  set cindent
  set smarttab
  set autoindent
  set smartindent
  set foldmethod=indent
  set foldlevel=99
  set splitbelow
  set splitright
  set list listchars=tab:→\ ,trail:·


"------------------------
" Improved the statusline
"------------------------

  set statusline =

  set statusline+=%#identifier#
  set statusline+=%1*
  set statusline+=%{Branch()}
  set statusline+=%*

  " Filename

  set statusline+=%#identifier#
  set statusline+=%1*
  set statusline+=[%t]

  " Flags
  set statusline+=%2*
  set statusline+=%h%m%r%w
  set statusline+=%*

  " Warning when file encoding is not utf-8
  set statusline+=%#warningmsg#
  set statusline+=%2*
  set statusline+=\%{(&fenc!='utf-8'&&&fenc!='')?'['.&fenc.']':''}
  set statusline+=%*

  " Warning on syntax-error
  set statusline+=%#warningmsg#
  set statusline+=%2*
  set statusline+=\%{SyntasticStatuslineFlag()}
  set statusline+=%*

  " Row & column
  set statusline+=%*
  set statusline+=%=
  set statusline+=%<
  set statusline+=%0*\ row:%l/%L\ \ col:%03c
  set statusline+=%*

  let g:syntastic_enable_signs = 1

  fun! Branch()
    let s:status = fugitive#statusline()
    if (s:status != '')
      return strpart(s:status, 4, strlen(s:status) - 5)
    endif
    return ''
  endfun

