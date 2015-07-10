set history=1000
filetype plugin on
filetype indent on

let mapleader = " "
let g:mapleader = " "
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>l :!clear && pdflatex -interaction=nonstopmode % && clear &&  pdflatex -interaction=nonstopmode %<cr>


execute pathogen#infect()

set breakindent
set so=5
set wildmenu
set ruler
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set mat=2
set noerrorbells
set visualbell
set number
set ruler 

syntax enable
colorscheme solarized
let python_version_2 = 1
let python_highlight_all = 1
let g:tex_flavor='latex'
inoremap <c-u> <c-g>u<c-u>
inoremap <c-w> <c-g>u<c-w>

set ai "Auto indent
"set si "Smart indent
set wrap "Wrap lines
"set cursorline
hi CursorLine ctermbg=0
hi CursorLineNr ctermbg=0

set clipboard=unnamedplus

"autocmd BufReadPost *
"     \ if line("'\"") > 0 && line("'\"") <= line("$") |
"     \   exe "normal! g`\"" |
"     \ endif
" Remember info about open buffers on close
set viminfo^=%

