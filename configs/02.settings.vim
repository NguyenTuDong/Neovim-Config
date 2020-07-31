set guifont=DroidSansMono\ Nerd\ Font\ Mono:h10

" Spaces & Tabs {{{
set tabstop=2       " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set shiftwidth=2    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs

" UI Config {{{
set hidden
set number                   " show line number
set showcmd                  " show command in bottom bar
set cursorline               " highlight current line
set wildmenu                 " visual autocomplete for command menu
set showmatch                " highlight matching brace
set laststatus=2             " window will always have a status line
set nobackup
set noswapfile
" }}} UI Config

" system clipboard
if has("clipboard")
  nnoremap <leader>p "+p
  vnoremap <leader>p "+p
  nnoremap <leader>P "+P
  vnoremap <leader>P "+P
  vnoremap <leader>y "+y
  nnoremap <leader>Y "+Y
endif
