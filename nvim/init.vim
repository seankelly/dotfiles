set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Lokaltog/vim-distinguished'
Plugin 'cespare/vim-toml'
Plugin 'leafgarland/typescript-vim'
Plugin 'othree/html5.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-surround'

call vundle#end()

syntax on
filetype plugin indent on

set background=dark
set cindent
set confirm
set display+=lastline,uhex,
set expandtab
set ignorecase
set nobackup
set nomodeline
set scrolloff=3
set shell=/bin/sh
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set softtabstop=4
set tabstop=8
set tildeop
set undofile
set wildignore+=.o,.out
set wildmode=longest,list,full

let fortran_free_source=1

let g:ycm_python_binary_path = 'python'

nmap Y y$

" From *restore-cursor* *last-position-jump* within Vim help.
autocmd BufReadPost *
    \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ | endif

autocmd FileType c,cpp setlocal noexpandtab softtabstop=8 shiftwidth=8
autocmd FileType gitcommit call setpos('.', [0, 1, 1, 0])
autocmd FileType php setlocal noexpandtab softtabstop=8 shiftwidth=8
autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
autocmd FileType yaml setlocal softtabstop=2 shiftwidth=2

colorscheme distinguished
