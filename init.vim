" testing
" ============================================================================
" DEFAULT LOCATION FOR MANJARO
" ============================================================================     
" ~/.vim/vimrc


" ============================================================================
" REQUIREMENTS / DEPENDENCIES
" ============================================================================
" - git
" - vim-plug
" - fzf
" - nerd fonts
" - powerline
" - yarn
" - npm
" - autopep8


" ============================================================================
" PLUGINS
" ===========================================================================
" Plugins will be downloaded under the specified directory.
if has('nvim')
    call plug#begin('~/.config/nvim/plugged')
else
    call plug#begin('~/.vim/plugged')
endif

source $HOME/.config/nvim/after/syntax/cpp.vim

" Override configs by directory
" Plug 'arielrossanigo/dir-configs-override.vim'

"Flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

"Multi Cursor Support
Plug 'terryma/vim-multiple-cursors'

" Code commenter
Plug 'preservim/nerdcommenter'

" Pink Color Scheme
Plug 'sts10/vim-pink-moon'

" Strawberry Pink
Plug 'nightsense/strawberry'

" Better file browser
Plug 'scrooloose/nerdtree'

"Live Server
Plug 'turbio/bracey.vim'

"Vim Vue
Plug 'posva/vim-vue'

"Dart Plug
Plug 'dart-lang/dart-vim-plugin'

" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C++ Syntax Highlighter
Plug 'octol/vim-cpp-enhanced-highlight'

" File Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Eclipse TaskList
Plug 'fisadev/FixedTaskList.vim'
" Plug 'vim-scripts/TaskList.vim'

"Dart
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'

"Vim Ident line
Plug 'Yggdrot/indentLine'

" Deoplete
 if has('nvim')
     Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 else
     Plug 'Shougo/deoplete.nvim'
     Plug 'roxma/nvim-yarp'
     Plug 'roxma/vim-hug-neovim-rpc'
 endif

" intellisense (autocompletion) engine for vim8 & neovim.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" MUST INSTALL CocInstall coc-lists coc-marketplace
" THEN CocList marketplace TO INSTALL THE REST EXTENSIONS

" A universal set of defaults that (hopefully) everyone can agree on
Plug 'tpope/vim-sensible'

" Comment stuff out
Plug 'tpope/vim-commentary'

" quoting/parenthesis made simple
Plug 'tpope/vim-surround'

" Automatically close parenthesis, etc
 Plug 'Townk/vim-autoclose'

" Format code with one button press (or automatically on save).
 Plug 'Chiel92/vim-autoformat'

" continuously updated session files
Plug 'tpope/vim-obsession'

" Vim-Floaterm
Plug 'voldikss/vim-floaterm'

" Git integration
Plug 'tpope/vim-fugitive'

" Shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plug 'airblade/vim-gitgutter'

" Better language packs
Plug 'sheerun/vim-polyglot'

"Paper COLORSCHEME
Plug 'NLKNguyen/papercolor-theme'

" Displaying thin vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Indent Guides is a plugin for visually displaying indent levels in Vim.
Plug 'nathanaelkane/vim-indent-guides'

" useful overview of the code as a minimap sidebar.
Plug 'severin-lemaignan/vim-minimap'

" Large collection of vim colorschemes
Plug 'flazz/vim-colorschemes'

" A simple tool for presenting slides in vim based on text files.
Plug 'sotte/presenting.vim'

" Vim plugin for LaTeX
Plug 'lervag/vimtex'

" Distraction-free writing in Vim.
Plug 'junegunn/goyo.vim'

"Vim Dev Icons
Plug 'ryanoasis/vim-devicons'

"Dog run Colorscheme
Plug 'wadackel/vim-dogrun'

" Vim plugin for .tmux.conf
Plug 'tmux-plugins/vim-tmux'

" Adds icons to vim plugins
Plug 'ryanoasis/vim-devicons'

"Palenight Color
Plug 'drewtempelmeyer/palenight.vim'

"Tpope plugins
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-ragtag'

"Javascript / React
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jxnblk/vim-mdx-js'

"html / css
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'branch': 'release/0.x'
\ }

" Snippets
Plug 'SirVer/ultisnips'

" Linting
Plug 'dense-analysis/ale'

"Color Scheme One Half
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" CoC recommended config
let g:coc_start_at_startup = 1
let g:coc_global_extensions = [
\ 'coc-json',
\ 'coc-css',
\ 'coc-ultisnips',
\ 'coc-tsserver',
\ 'coc-emmet',
\ 'coc-tag',
\ 'coc-omni',
\ 'coc-syntax',
\ 'coc-yaml',
\ 'coc-solargraph',
\ 'coc-phpls',
\ 'coc-html',
\ 'coc-tailwindcss',
\ 'coc-markdownlint',
\ 'coc-git'
\ ]

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


" ============================================================================
" GLOBAL CONFIGURATION
" ============================================================================
" enable syntax highlighting (previously syntax on).
syntax enable

" set the window???s title, reflecting the file currently being edited.
set title

"Set BG Light
set background=light

" Use an encoding that supports Unicode.
set encoding=utf-8

" show the line number
set number

" show the relative number
set relativenumber

"Set Prettier Auto Save
let g:prettier#autoformat = 0
autocmd BufWritePre *.html,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"Set N/I Rnu
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

map <C-b> :!g++ % -o a && ./a<CR>

"Set ident
let g:indentLine_color_term = 239

" Dart Settings
let dart_html_in_string=v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

" show cursor line
set cursorline

" Always show cursor position.
set ruler

" when scrolling, keep cursor 5 lines away from screen border
set scrolloff=5

" show the tab bar
set showtabline=2

" makes copy and paste work better
set clipboard=unnamedplus

" automatic indentation
set autoindent
set smartindent

" use spaces instead of tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" place a vertical line as a marker for maximum prescribed text width
" set textwidth=79
set colorcolumn=+1

" use tabs at the start of a line, spaces elsewhere
set smarttab

" don't wrap text
set nowrap

" don't fold code
set nofoldenable

" make completion smarter.
set ignorecase
set smartcase

" Automatically re-open files after they have changed without prompting.
set autoread

" disable beep on errors.
set noerrorbells

" [DISABLED] flash the screen instead of beeping on errors.
set novisualbell
set termguicolors

" needed so deoplete can auto select the first suggestion
set completeopt+=noinsert

" comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
set completeopt-=preview

" autocompletion of files and commands behaves like shell
" (complete only the common part, list the options that match)
set wildmode=list:longest

" fix problems with uncommon shells (fish, xonsh) and plugins running commands
" (neomake, ...)
set shell=/bin/zsh

" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" enable mouse
set mouse=a

" Enable Ale and Prettier
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}

set t_Co=256

" ============================================================================
" CUSTOM MAPPINGS
" ============================================================================



" tab navigation mappings
map tt :tabnew
map <M-l> :tabn<CR>
imap <M-Right> <ESC>:tabn<CR>
map <M-h> :tabp<CR>
map <C-h> :bprevious<CR>
map <C-l> :bnext<CR>
imap <M-Left> <ESC>:tabp<CR>
map <C-t> :FloatermTogle <CR>
map <C-T> :FloatermNew <CR>


" Map Commenter
map <C-/> <leader>cc
" clear search results
nnoremap <silent> // :noh<CR>

"text down and up a 1 line 
map <M-Up> :m .-2<CR>
map <M-Down> :m .+1<CR>

"text dupikat
map <C-d> yyp<CR>

"save mapping
map <C-s> :w<CR>

"build mapping
if has('FileType python') 
    map <C-b> :!python % <CR>
elseif ('FileType c++')
    map <C-b> :!g++ % -o a && ./a<CR>
endif

" ============================================================================
" DOEPLETE CONFIGURATION
" ============================================================================
" let g:deoplete#enable_at_startup = autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber 

" ============================================================================
" COC CONFIGURATION
" ============================================================================
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" coc-prettier
" command! -nargs=0 Prettier :CocCommand prettier.formatFile


" ============================================================================
" FZF CONFIGURATION
" ============================================================================
nnoremap <C-p> :<C-u>FZF<CR>


" ============================================================================
" TASKLIST CONFIGURATION
" ============================================================================
" show pending tasks list
map <F2> :TaskList<CR>


" ============================================================================
" NERDTREE CONFIGURATION
" ============================================================================
" automatically open nerdtree when no file name specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" toggle nerdtree display
map <C-g> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']


" " ============================================================================
" " NERDCOMMENTER CONFIGURATION
" " ============================================================================
" " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
" " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
" " Align line-wise comment delimiters flush left instead of following code indentation
 let g:NERDDefaultAlign = 'left'


" ============================================================================
" AUTOCLOSE ISORT CONFIGURATION
" ============================================================================
" Fix to let ESC work as espected with Autoclose plugin
" (without this, when showing an autocompletion window, ESC won't leave insert
"  mode)
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}


" ============================================================================
" ISORT CONFIGURATION
" ============================================================================
" let g:vim_isort_python_version = 'python3'


" ============================================================================
" MINIMAP CONFIGURATION
" ============================================================================
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='Visual'


" ============================================================================
" AIRLINE CONFIGURATION
" ============================================================================
" set airline theme
"let g:airline_theme = 'wombat'
let g:airline_theme = 'bubblegum'
" let g:airline_theme = 'base16'
" displays all buffers when there's only one tab open
let g:airline#extensions#tabline#enabled = 1
" separators can be configured independently for the tablne
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" populate the g:airline_symbols dictionary with the powerline symbols
let g:airline_powerline_fonts = 1


" ============================================================================
" INDENTLINE CONFIGURATION
" ============================================================================
" " customize conceal color
" let g:indentLine_color_term = 239
" " customize conceal color
" " let g:indentLine_char_list = ['|', '??', '???', '???']
" let g:indentLine_char_list = ['???']

"VUE SYNTAX AUTO
let g:vim_vue_plugin_load_full_syntax = 1

" ============================================================================
" INDENTGUIDE CONFIGURATION
" ============================================================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level           = 1
let g:indent_guides_auto_colors           = 1
let g:indent_guides_color_change_percent  = 10
let g:indent_guides_space_guides          = 1
let g:indent_guides_tab_guides            = 1
let g:indent_guides_guide_size            = 1
let g:indent_guides_exclude_filetypes     = ['help', 'nerdtree', 'startify', 'Preview','__doc__','rst']


" ============================================================================
" COLORSCHEME CONFIGURATION
" ============================================================================
" colorscheme kolor
" coloscheme space-vim-dark
" colorscheme dracula
" let g:seoul256_background = 234
" colorscheme seoul256
" colorscheme seti
" colorscheme onehalfdark
" colorscheme darkspectrum
" colorscheme wombat
" colorscheme spacegray
" colorscheme codedark
" colorscheme palenight
" colorscheme pink-moon
"colorscheme PaperColor
"colorscheme strawberry-light
colorscheme dogrun


" ============================================================================
" AUTOFORMAT CONFIGURATION
" ============================================================================
" Autoformat upon saving file
" autocmd BufWrite * :Autoformat
" " enable/diable verbose mode
" let g:autoformat_verbosemode=0


" ============================================================================
" VIMTEX CONFIGURATION
" ============================================================================
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'


" ============================================================================
" VIM_DEV_ICONS CONFIGURATION
" ============================================================================
" loading the plugin
let g:webdevicons_enable = 1
" adding the flags to NERDTree
let g:webdevicons_enable_nerdtree = 1
" adding the custom source to unite
let g:webdevicons_enable_unite = 1
" adding the column to vimfiler
let g:webdevicons_enable_vimfiler = 1
" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1
" ctrlp glyphs
let g:webdevicons_enable_ctrlp = 1
" adding to vim-startify screen
let g:webdevicons_enable_startify = 1
" adding to flagship's statusline
let g:webdevicons_enable_flagship_statusline = 1
" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1
" use double-width(1) or single-width(0) glyphs
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" whether or not to show the nerdtree brackets around flags
let g:webdevicons_conceal_nerdtree_brackets = 1
" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" Adding the custom source to denite
let g:webdevicons_enable_denite = 1

"LINE CONFIG FOR DOWN AND UP EASLY
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==


