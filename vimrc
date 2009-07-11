syntax on
filetype plugin on
filetype indent on

set autoindent
set background=light
set backspace=eol,indent,start
set cindent
set confirm
set display+=lastline,uhex,
set expandtab
set grepprg=grep\ -nH\ $*
set hidden
set nomodeline
set ruler
set scrolloff=3
set shiftround
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smarttab
set softtabstop=4
set t_Co=16
set tabstop=8
set tildeop
set ttimeoutlen=50
set wildignore+=.o,.out

map Y y$

let g:tex_flavor="latex"

let g:Textobj_defs = [
   \['/', 'Textobj_paired', '/'],
   \['f', 'Textobj_fold'],
   \[',', 'Textobj_arg'],
\]

let g:Skeleton_patterns = [
    \'*.pl'
\]

autocmd BufReadPost *
\  if line("'\"") > 0 && line("'\"") <= line("$") |
\    exe "normal g'\"" |
\  endif

if $SHELL =~ 'bin/fish'
    set shell=/bin/sh
endif
