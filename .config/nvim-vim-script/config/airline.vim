" ------- AIR LINE TABS ---
nnoremap <C-h> :AirlineToggle <CR> 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" Airline theme 
" enable tabline
let g:airline#extensions#tabline#enabled = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1

nnoremap <A-.> :bnext <CR>==
nnoremap <A-,> :bprevious <CR>==
nnoremap <A-x> :bdelete <CR>==
