set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'phildawes/racer'

Bundle 'Lokaltog/vim-distinguished'
Bundle 'davidhalter/jedi-vim'
Bundle 'rust-lang/rust.vim'

call vundle#end()

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
set ruler
set scrolloff=3
set shell=/bin/sh
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
set wildignore+=.o,.out

if executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

let $RUST_SRC_PATH = expand('~/projects/rust/rust/src')

let fortran_free_source=1

nmap Y y$

autocmd BufReadPost *
\ if &filetype != 'gitcommit' && &filetype != 'gitrebase' && line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "normal g`\"" |
\ endif

autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2
autocmd FileType php setlocal noexpandtab softtabstop=0 shiftwidth=0
autocmd FileType c,cpp setlocal noexpandtab softtabstop=0 shiftwidth=0

colorscheme distinguished
