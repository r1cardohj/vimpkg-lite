" base with no plug --------------------------------------------------
set encoding=utf-8
set tabstop=4
syntax on
set nu
set showmatch
set cindent
set autoindent
set shiftwidth=4
set softtabstop=0              " 关闭softtabstop 永远不要将空格和tab混合输入
filetype plugin indent on
set completeopt=longest,menu
set nocompatible
set background=dark
set pumheight=10 " 设置补全菜单的高度为10行

" set leader key
let mapleader = "\<space>"

"切换回车为补全
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" 补全结束后窗口自动消失

" tab split
nnoremap <leader>st :tab split<CR>
" close current tab
nnoremap <leader>ct :tabc <CR> 
" switch form
nnoremap <leader>h :wincmd h<CR>  
nnoremap <leader>j :wincmd j<CR>  
nnoremap <leader>k :wincmd k<CR>  
nnoremap <leader>l :wincmd l<CR>  


"<Leader>[1-9] move to tab [1-9]
for s:i in range(1, 9)
  execute 'nnoremap <Leader>' . s:i . ' ' . s:i . 'gt'
endfor

augroup complete
  autocmd!
  autocmd CompleteDone * pclose
augroup end

if has('gui_running')
    colorscheme fruity
    if has("win32") || has("win64")
        set guifont=Consolas:h18
    else
        set guifont=MiscFixed\ Semi-Condensed\ 10
    endif
else
    colorscheme slate	
endif

" set netrw 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
