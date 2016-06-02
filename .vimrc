set t_Co=256 wrap

syntax on
"set background=light
"hi Normal ctermfg=gray ctermbg=black
set hlsearch incsearch backspace=2 number
let g:molokai_original = 1
let g:molokai_termcolors=256
colorscheme molokai

autocmd BufNewFile,BufEnter *.md set filetype=markdown
autocmd BufNewFile,BufEnter *.cpp set filetype=cpp
autocmd BufNewFile,BufEnter *.c set filetype=c
autocmd BufNewFile,BufEnter *.rs set filetype=rust
autocmd FileType c,cpp,vim,bash,rust colorscheme molokai | setlocal softtabstop=4 shiftwidth=4 expandtab cursorline | autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType cpp setlocal makeprg=g\+\+\ %\ \-g\ \-std\=c\+\+11\ \-Wall
autocmd FileType markdown,text colorscheme morning | setlocal spell spelllang=en foldcolumn=12 linebreak nonumber showtabline=0 laststatus=0 makeprg=pandoc\ \'%\'\ \-o\ \'%:r.pdf\' | highlight! link FoldColumn Normal | highlight NonText ctermfg=bg | nnoremap k gkh | nnoremap j gj
autocmd FileType netrw colorscheme molokai

filetype indent on
retab
au BufNewFile *.cpp 0r ~/.vim/skeleton.cpp
set noeb vb t_vb=
nnoremap ; :

set cm=blowfish2
set viminfo='0,\"0,\/0,:0,f0
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

set keymap=greek_utf-8 iminsert=0 imsearch=-1
