vim.cmd([[


let g:neoformat_python_autopep8 = {
            \ 'exe': 'autopep8',
            \ 'args': ['-s 4', '-E'],
            \ 'stdin': 1,
            \ 'env': ["DEBUG=1"],
            \ 'valid_exit_codes': [0, 23],
            \ 'no_append': 1,
            \ }

let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']
let g:neoformat_enabled_go = ['gofmt', 'goimports', 'gofumpt', 'gofumports']

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

]])
