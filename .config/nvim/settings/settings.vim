set number
set relativenumber
set noreadonly
set noswapfile
syntax enable
set encoding=UTF-8
let g:indentLine_setColors = 239
let g:indentLine_char = '¦'
filetype plugin on
set tabstop=2 softtabstop=2 shiftwidth=2 
set modifiable
set buftype=

" set number relativenumber
" " set colorcolumn=81
" set laststatus=0
" set smartindent
" set autoindent
" set expandtab
" set smarttab
" " set tabstop=4
" " set shiftwidth=4
" " set showtabline=4
" set formatoptions-=cro
" set hidden
" set nowrap
" set encoding=utf-8
" set fileencoding=utf-8
" set ruler
" set mouse=a
" set cursorline
" set splitbelow
" set splitright
" set clipboard=unnamedplus
set background=dark
" " set autochdir
" syntax enable
filetype on
filetype indent on
filetype plugin on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
 set termguicolors
endif
" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
syntax enable

" To enable the lightline theme
" let g:lightline = { 'colorscheme': 'nightowl' }
