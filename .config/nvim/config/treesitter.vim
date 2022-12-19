let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'     :'✗',
                \ 'Dirty'   :'✖',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" augroup nerdtree
"   autocmd!
"   autocmd FileType nerdtree syntax clear NERDTreeFlags
"   autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
"   autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
"   autocmd FileType nerdtree setlocal conceallevel=3
"   autocmd FileType nerdtree setlocal concealcursor=nvic
" augroup END
