"VIM SETTING 
" ____                 _   
"| __ )  ___  __ _ ___| |_ 
"|  _ \ / _ \/ _` / __| __|
"| |_) |  __/ (_| \__ \ |_ 
"|____/ \___|\__,_|___/\__|
"                         
" Maulana Sodiqin V.1.2-r3
"
"Start Vim Settings Section
syntax enable
syntax on
set title
set nu
set rnu
set scrolloff=5
set cursorline
set clipboard=unnamedplus
set encoding=utf-8
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set ignorecase
set smartcase
set nowrap
set laststatus=2
set background=dark
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set shell=/bin/bash
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Key Binding
map <C-b> :!g++ % -o a && clear && ./a<CR>
map <C-s> :w<CR>
map tn :tabn <CR>
map tn :tabn <CR>
map gg :Git add . <CR>
map gf :Git commit -m ""
map gh :Git push <CR>
map gb :Git push --set-upstream origin
map gt :Git pull <CR>
map gr :Git pull 
map tt :tabnew <CR>
map <C-d> yyp <CR>
"End Vim Settings Section


"Start Pluggin Section
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'sheerun/vim-polyglot'
Plug 'Townk/vim-autoclose'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'preservim/nerdtree'
Plug 'AndrewRadev/tagalong.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-utils/vim-man'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'dense-analysis/ale'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'posva/vim-vue'
Plug 'sbdchd/neoformat'
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'for':['zig','cmake','rust',
     \'java','json', 'haskell', 'ts','sh', 'cs',
     \'yaml', 'c', 'cpp', 'd', 'go',
     \'python', 'dart', 'javascript', 'vim'], 'branch': 'release'}
Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']}
Plug 'NLKNguyen/papercolor-theme'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()
"End Pluggin Section


"Start Pluggin Settings Section

"CLANG Auto Format Setting
let g:clang_format#auto_format=1

"EMMET Setting
autocmd FileType html,css EmmetInstall

"TAGALONG Setting
let g:tagalong_verbose = 1

"ALE Setting
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

"VIM Airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:airline#extensions#tabline#enabled = 1

"NERD Tree Setting
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"FLOATERM Setting
let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_prev   = '<Leader>p'
let g:floaterm_keymap_next   = '<Leader>n'
let g:floaterm_keymap_toggle = '<Leader>t'

"PRETTIER Setting
let g:prettier#quickfix_enabled = 0

"NEOFORMAT Setting
autocmd BufWritePre *.js,*.vue,*.html,*.json Neoformat prettier

"ULTISNIPS Settings
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"


"End Pluggin Settings Section

"Start Set Colorscheme Section
colorscheme palenight
"End Set Colorscheme Section
