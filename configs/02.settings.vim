set guifont=DroidSansMono\ Nerd\ Font\ Mono
set encoding=UTF-8

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

" system clipboard
if has("clipboard")
  nnoremap <space>p "+p
  vnoremap <space>p "+p
  nnoremap <space>P "+P
  vnoremap <space>P "+P
  vnoremap <space>y "+y
  nnoremap <space>Y "+Y
endif

" Run commands with semicolon
nnoremap ; :
nnoremap <space>w :w<CR>
nnoremap <space>q :q<CR>
nmap <C-s> :source %<CR>
nnoremap J 5j
nnoremap K 5k

inoremap jk <esc>
inoremap kj <esc>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
nnoremap n nzzzv
nnoremap N Nzzzv

"" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
