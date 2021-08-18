set ignorecase              "Ignore case for search sensitivity
set smartcase               "search sensitivity
set scrolloff=10            "Set scrolling when mentioned rows away
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set smartindent             " Set smart indent to put indents after parenthesis
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
set updatetime=300          " Reduces noticible lag by reducing updatetime
" Configs from Coc-config rep
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2
set hlsearch
set ignorecase
" new features
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
" set spell                 " enable spell check (may need to download
" language package)
" " set noswapfile            " disable creating swap file
" " set backupdir=~/.cache/vim " Directory to store backup files.
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" -------
"  Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='deus'



"--------
call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" " add the plugin you want to use here.
 Plug 'joshdick/onedark.vim'
 Plug 'iCyMind/NeoSolarized'
 Plug 'tpope/vim-fugitive'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
" Plug 'valloric/youcompleteme'
" Plug 'nvim-telescope/telescope.nvim'
 Plug 'kien/ctrlp.vim'
 Plug 'mbbill/undotree'
 Plug 'morhetz/gruvbox'

 Plug 'ryanoasis/vim-devicons'

 "IDE Like Setup - Takuya Matsuyama Guide
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
 "Coc
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

let g:gruvbox_constrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<ESC>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<ESC>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
highlight Normal guibg=none
set background=dark

" Custom Remaps
let mapleader = ","
"noremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
inoremap jk <ESC>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
nnoremap <esc> :noh<return><esc>

" -------------------- LSP ---------------------------------
:lua << EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
}

require 'nvim-treesitter.install'.compilers = { "clang" }
require'nvim-treesitter.configs'.setup{
highlight = { enable = true},
}
EOF

" Completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
set shortmess+=c
" -------------------- LSP ---------------------------------
"  Function Definition of show_documentation
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"Function to set autocomplete suggestions to off in current buffer
function! ToggleCompletionSuggestion()
    let b:coc_suggest_disable=1
    endfunction
"Keybind to map the function ToggleCompletionSuggestion
map <leader>dac :call ToggleCompletionSuggestion()<CR>
