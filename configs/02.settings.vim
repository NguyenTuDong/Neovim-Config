set guifont=DroidSansMono\ Nerd\ Font\ Mono
set encoding=UTF-8

" g Leader key
let mapleader=" "

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" UI Config {{{
syntax on
set ruler
set hidden
set number relativenumber
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
set noshowmode
set clipboard=unnamedplus
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
" }}} UI Config
"
" Theme
" ==============================
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
" colorscheme OceanicNext 
"
let g:material_theme_style = 'ocean'
colorscheme material
