set t_Co=256

syntax on
"set background=light
"hi Normal ctermfg=gray ctermbg=black
set hlsearch incsearch backspace=2 number
let g:molokai_original = 1
"let g:molokai_termcolors=256
colorscheme molokai

autocmd BufNewFile,BufEnter *.md set filetype=markdown
autocmd BufNewFile,BufEnter *.cpp set filetype=cpp
autocmd BufNewFile,BufEnter *.c set filetype=c
autocmd FileType c,cpp colorscheme molokai | setlocal softtabstop=4 shiftwidth=4 expandtab cursorline | autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType markdown,text colorscheme morning | setlocal spell spelllang=en foldcolumn=12 linebreak nonumber showtabline=0 laststatus=0 | highlight! link FoldColumn Normal | highlight NonText ctermfg=bg

"set number hlsearch softtabstop=4 shiftwidth=4 expandtab backspace=2 incsearch cursorline
"set mouse=a
filetype indent on
retab
"map <ScrollWheelUp> <Up> <Up> <Up>
"map <ScrollWheelDown> <Down> <Down> <Down>
au BufNewFile *.cpp r ~/.vim/skeleton.cpp
set noeb vb t_vb=
nnoremap ; :

set cm=blowfish2
set viminfo='0,\"0,\/0,:0,f0
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
