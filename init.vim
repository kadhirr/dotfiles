set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set nohlsearch              "Do not highlight the term after search
set ignorecase              "Ignore case for search sensitivity
set smartcase               "search sensitivity
set scrolloff=10            "Set scrolling when mentioned rows away
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set relativenumber
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

" set spell                 " enable spell check (may need to download
" language package)
" " set noswapfile            " disable creating swap file
" " set backupdir=~/.cache/vim " Directory to store backup files.
call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" " add the plugin you want to use here.
 Plug 'joshdick/onedark.vim'
 Plug 'iCyMind/NeoSolarized'

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
" Plug 'valloric/youcompleteme'
" Plug 'nvim-telescope/telescope.nvim'
 Plug 'kien/ctrlp.vim'
 Plug 'mbbill/undotree'
 Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

" Custom Remaps
let mapleader = " "
"noremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
inoremap jk <ESC>

