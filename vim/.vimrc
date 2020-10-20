set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-distinguished'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'cespare/vim-toml'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/html5.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-surround'

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
set wildmode=longest,list,full

if executable('rg')
    set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
elseif executable('ag')
    set grepprg=ag\ --nogroup\ --nocolor
endif

let fortran_free_source=1

let g:ycm_python_binary_path = 'python'

if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

nmap Y y$

au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit" |
        \ execute("normal `\"") |
    \ endif

autocmd FileType c,cpp setlocal noexpandtab softtabstop=8 shiftwidth=8
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
autocmd FileType php setlocal noexpandtab softtabstop=8 shiftwidth=8
autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2

colorscheme distinguished
