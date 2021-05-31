"Settings Section
syntax enable
syntax on
set title
set nu
set cursorline
set ruler
set clipboard=unnamedplus
set encoding=utf-8
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set ignorecase
set smartcase
set nowrap
set laststatus=2
set background=light
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Key Binding
map <C-b> :!clang++ % -o a && ./a<CR>
map <C-s> :w<CR>

"Pluggin Section
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'Townk/vim-autoclose'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'morhetz/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'neoclide/coc.nvim', {'for':['zig','cmake','rust',
     \'java','json', 'haskell', 'ts','sh', 'cs',
     \'yaml', 'c', 'cpp', 'd', 'go',
     \'python', 'dart', 'javascript', 'vim'], 'branch': 'release'}
Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']}
Plug 'NLKNguyen/papercolor-theme'

call plug#end()

"Pluggin Settings Section
"Clang Auto Format Setting
let g:clang_format#auto_format=1

"Set Colorscheme Section
colorscheme PaperColor

