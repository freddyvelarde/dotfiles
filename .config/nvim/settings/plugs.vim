
call plug#begin( '~/.config/nvim/plugins' )

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Nerd Tree Files Nvigator
Plug 'preservim/nerdtree'
" icons
Plug 'ryanoasis/vim-devicons'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


