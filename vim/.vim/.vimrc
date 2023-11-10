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
set smartindent

" Set Colorscheme
set termguicolors
set background=dark
colorscheme rosepine

" Set Scroll and Line Break Options
set scrolloff=999
set wrap
set linebreak
set columns=80

" Set Color Column
set colorcolumn=80
highlight ColorColumn ctermbg=8

" Ignore Vi Mode
set nocompatible

" Enable Syntax
syntax enable
filetype plugin on

" Fuzzy Finding 
set path+=**
set wildmenu

" Enable Persistent Undo
if has('persistent_undo')
	set undodir=$HOME/.vim/undo
    set undofile
endif

function! OscCopy()
  let encodedText=@"
  let encodedText=substitute(encodedText, '\', '\\\\', "g")
  let encodedText=substitute(encodedText, "'", "'\\\\''", "g")
  let executeCmd="echo -n '".encodedText."' | base64 | tr -d '\\n'"
  let encodedText=system(executeCmd)
  if $TMUX != ""
    "tmux
    let executeCmd='echo -en "\x1bPtmux;\x1b\x1b]52;;'.encodedText.'\x1b\x1b\\\\\x1b\\" > /dev/tty'
  else
    let executeCmd='echo -en "\x1b]52;;'.encodedText.'\x1b\\" > /dev/tty'
  endif
  call system(executeCmd)
  redraw!
endfunction
command! OscCopy :call OscCopy()
