
call plug#begin( '~/.config/nvim/plugins' )

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" colorschemes
Plug 'whatyouhide/vim-gotham'
Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'decaycs/decay.nvim', { 'as': 'decay' }

" Nerd Tree Files Nvigator
Plug 'preservim/nerdtree'
" icons
Plug 'ryanoasis/vim-devicons'

" fzf
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" telescope 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" git integraetion
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" detect colors usefull for css
" Plug 'gko/vim-coloresque' 
" Plug 'norcalli/nvim-colorizer.lua'

" add, delete, change surroundings (it's awesome)
Plug 'tpope/vim-surround'

" Scroll smooth
Plug 'yuttie/comfortable-motion.vim'

call plug#end()


