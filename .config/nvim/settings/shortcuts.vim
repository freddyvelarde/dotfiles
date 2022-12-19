" -------------------- COMMENTAEY ----------------------------------

nnoremap <C-/> :Commentary<CR>
vnoremap <C-/> :Commentary<CR>


" -------------------- VIM SHORTCUTS --------------------------------
nnoremap <A-k> :m-2<CR>==
nnoremap <A-j> :m+<CR>==
nnoremap <C-S> :w!<CR>

nnoremap <C-S> :yyp <CR>

" -------------------- Close tags and brackets -----------
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
:imap ii <Esc>
nnoremap <c-z> :u<CR>      " Avoid using this**
inoremap <c-z> <c-o>:u<CR>

nnoremap <C-A> ggVG
