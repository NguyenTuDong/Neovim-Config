call plug#begin("~/.vim/plugged")
  Plug 'altercation/vim-colors-solarized' 
  Plug 'kaicataldo/material.vim'
" Plug 'christianchiarulli/nvcode-color-schemes.vim'
" Plug 'joshdick/onedark.vim'
" Plug 'tomasr/molokai'
" Plug 'dracula/vim'
  Plug 'scrooloose/nerdtree'
  Plug 'jistr/vim-nerdtree-tabs'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver'] 
  Plug 'jiangmiao/auto-pairs'
  Plug 'machakann/vim-sandwich'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Yggdroot/indentLine'
  Plug 'pangloss/vim-javascript'

  "*****************************************************************************
  "" Custom bundles
  "*****************************************************************************

  " html
  "" HTML Bundle

  Plug 'gko/vim-coloresque'
  Plug 'tpope/vim-haml'
  Plug 'mattn/emmet-vim'


  " javascript
  "" Javascript Bundle
  Plug 'jelera/vim-javascript-syntax'


  " php
  "" PHP Bundle
  Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install --no-dev -o'}
  Plug 'stephpy/vim-php-cs-fixer'


  " vuejs
  Plug 'posva/vim-vue'
  Plug 'leafOfTree/vim-vue-plugin'

call plug#end()

