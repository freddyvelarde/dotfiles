" -------------------- COMMENTAEY ----------------------------------

nnoremap <C-/> :Commentary<CR>
vnoremap <C-/> :Commentary<CR>


" -------------------- MOVE SHORTCUTS --------------------------------


nnoremap <A-k> :m-2<CR>==
nnoremap <A-j> :m+<CR>==
nnoremap <C-S> :w!<CR>

nnoremap <C-S> :yyp <CR>

" MOVE ENTIRE LINES OF CODE
vnoremap <C-j> :m '>+1<CR>gv=gv  
vnoremap <C-k> :m '<-2<CR>gv=gv  

nnoremap <C-d> <C-d>zz
nnoremap <C-z> <C-z>zz



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

noremap <leader>nh :nohl <CR>
