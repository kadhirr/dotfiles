set nocompatible              " be iMproved, required
filetype off                  " required
set bg=dark
colorscheme gruvbox
"Open split right and below
set splitbelow
set splitright


"Training Wheels
nmap <Up>    <Nop>
nmap <Down>  <Nop>
nmap <Left>  <Nop>
nmap <Right> <Nop>

"NERDTree Keybinds
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


filetype plugin indent on    " required

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

"Keybind Changes

"Leader Key change
let mapleader="'"

"Change Escape Key
inoremap kj <ESC>

"Move between splits faster
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set noswapfile "disable the swapfile
set hlsearch "highlight all results
set ignorecase "ignore case in search
set incsearch "show search results as you type

set exrc "run vimrc in the specified project folder
set nohlsearch "Do not highlight the term after search
set hidden "Keep Buffer in the BG
set noerrorbells "No error indicator
set nowrap "No text wrap
set smartcase "
set ignorecase "This both for search sensitivity
set scrolloff=10 "Set scrolling when im mentioned rows away