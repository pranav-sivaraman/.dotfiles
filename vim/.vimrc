" Better Escape
inoremap jk <esc>
vnoremap jk <esc>

" Better Page Up and Page Down
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap <C-b> <C-b>zz
nnoremap <C-f> <C-f>zz

" Set Line Number
set number
set relativenumber

" Set Indent Rules
set ts=4 sw=4
set autoindent

" Ignore Vi Mode
set nocompatible

" Enable Syntax
syntax enable
filetype plugin on

" Fuzzy Finding 
set path+=**
set wildmenu
