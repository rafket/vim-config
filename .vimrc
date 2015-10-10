set t_Co=256

syntax on
set hlsearch incsearch backspace=2 number
let g:molokai_original = 1
"let g:molokai_termcolors=256
colorscheme molokai

autocmd BufNewFile,BufEnter *.md set filetype=markdown
autocmd FileType c,cpp setlocal softtabstop=4 shiftwidth=4 expandtab cursorline | autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType markdown,text colorscheme morning | highlight NonText ctermfg=white | setlocal spell spelllang=en foldcolumn=8 wrapmargin=8 nonumber showtabline=0 laststatus=0 | highlight! link FoldColumn Normal

filetype indent on
retab
au BufNewFile *.cpp r ~/.vim/skeleton.cpp
set noeb vb t_vb=
nnoremap ; :

set cm=blowfish2
set viminfo='0,\"0,\/0,:0,f0
