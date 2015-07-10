set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'gmarik/vundle'

Bundle 'Lokaltog/vim-distinguished'
Bundle 'davidhalter/jedi-vim'


syntax on
filetype plugin indent on

set autoindent
set background=dark
set backspace=eol,indent,start
set cindent
set confirm
set display+=lastline,uhex,
set expandtab
set grepprg=grep\ -nH\ $*
set hidden
set ignorecase
set incsearch
set nobackup
set nojoinspaces
set nomodeline
set nostartofline
set omnifunc=syntaxcomplete#Complete
"set regexpengine=1
set ruler
set scrolloff=3
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set smarttab
set softtabstop=4
set tabstop=8
set tildeop
set ttimeoutlen=50
set undofile
set undodir=$HOME/.vim/undo
"set viminfo='100,<50,s10,h
set wildignore+=.o,.out

let fortran_free_source=1

map Y y$

autocmd BufReadPost *
\ if &filetype != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif

"autocmd BufNewFile,BufReadPre *.yaml,*.yml setlocal regexpengine=1
autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2
autocmd FileType php setlocal noexpandtab softtabstop=0 shiftwidth=0
autocmd FileType c,cpp setlocal noexpandtab softtabstop=0 shiftwidth=0

colorscheme distinguished
