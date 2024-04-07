" base with no plug
set tabstop=4
syntax on
set nu
set showmatch
set cindent
set autoindent
set shiftwidth=4
set softtabstop=4
filetype plugin indent on
set completeopt=longest,menu
set nocompatible
set background=dark
:colorscheme fruity
" set netrw 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"
if has('gui_running')
    if has("win32") || has("win64")
        set guifont=Consolas:h16
    else
        set guifont=MiscFixed\ Semi-Condensed\ 10
    endif
endif
