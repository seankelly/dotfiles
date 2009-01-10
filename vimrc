syntax on
filetype plugin on
filetype indent on
set showmode
set showmatch
set showcmd
set ruler
set background=light
set tabstop=8
set sw=4 sts=4
set smarttab autoindent expandtab
set cindent
set nomodeline
set grepprg=grep\ -nH\ $*
set t_Co=16
set tildeop
set wildignore+=.o,.out

map Y y$

let g:Textobj_regex_enable = 1
"let g:Textobj_fold_enable = 1
let g:Textobj_arg_enable = 1

autocmd BufReadPost *
\  if line("'\"") > 0 && line("'\"") <= line("$") |
\    exe "normal g'\"" |
\  endif
