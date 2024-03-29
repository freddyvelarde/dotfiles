--------------------------
--- My Neovim Keybinds ---
--------------------------
vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { silent = true })

keymap.set("v", "ii", "<ESC>", { silent = true })

-- create a new file
keymap.set("n", "<leader>jf", ":tabnew | w ")

-- folding code
keymap.set("v", "fc", ":fold <CR>")

-- save file
keymap.set("n", "<leader>s", ":w <CR>")

-- nvim tree toggle
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true })

-- delete single character without copying into register
keymap.set({ "n", "v" }, "x", '"_x', { silent = true })

-- copy code into your clipboard
keymap.set("n", "<leader>mn", ":set clipboard=unnamedplus | echo 'clipboard enabled' <CR>", { silent = true })

keymap.set("n", "<leader>m,", ":set clipboard= | echo 'clipboard disabled' <CR>", { silent = true })

-- find a hovered word
keymap.set("n", "<leader>fw", "*", { silent = true })

-- tmux vim moves
keymap.set("n", "<leader>l", ":<C-U>TmuxNavigateRight<cr>", { silent = true })
keymap.set("n", "<leader>h", ":<C-U>TmuxNavigateLeft<cr>", { silent = true })
keymap.set("n", "<leader>j", ":<C-U>TmuxNavigateDown<cr>", { silent = true })
keymap.set("n", "<leader>k", ":<C-U>TmuxNavigateUp<cr>", { silent = true })

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files <CR>", { silent = true })
keymap.set("n", "<leader>fg", ":Telescope live_grep <CR>", { silent = true })
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { silent = true })
keymap.set("n", "<leader>fc", ":Telescope current_buffer_fuzzy_find<CR>", { silent = true })
keymap.set("n", "<leader>ft", ":Telescope <CR>", { silent = true })

-- select all
keymap.set("n", "<C-a>", "ggVG", { silent = true }) -- to select all file

keymap.set("n", "<A-k>", ":m-2<CR>==", { silent = true })
keymap.set("n", "<A-j>", ":m+<CR>==", { silent = true })

-- move entire lines of code
keymap.set("v", "<A-J>", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("v", "<A-K>", ":m '<-2<CR>gv=gv", { silent = true })

keymap.set("n", "mm", ":put 1 <CR>", { silent = true })

-- nerd commenter
keymap.set({ "n", "v" }, "<C-/>", "<Plug>NERDCommenterToggle", { silent = true })
keymap.set({ "n", "v" }, "gc", "<Plug>NERDCommenterToggle", { silent = true })

keymap.set("n", "<A-.>", ":bnext <CR>==", { silent = true })
keymap.set("n", "<A-,>", ":bprevious <CR>==", { silent = true })
keymap.set("n", "<A-x>", ":bdelete <CR>==", { silent = true })

keymap.set("n", "<leader>w", ":bnext <CR>==", { silent = true })
keymap.set("n", "<leader>q", ":bprevious <CR>==", { silent = true })
keymap.set("n", "<leader>x", ":bdelete <CR>==", { silent = true })

-- quotes, square and curly brackets completition
-- exaple text ->  "example text"
keymap.set("v", '"', 's"<ESC>pa" <ESC>x', { silent = true })
keymap.set("v", "fff", 'di"<ESC>pa" <ESC>x', { silent = true })

-- exaple text ->  `example text`
keymap.set("v", "`", "di`<ESC>pa` <ESC>x", { silent = true })
keymap.set("v", "ffj", "di`<ESC>pa` <ESC>x", { silent = true })

-- exaple text ->  'example text'
keymap.set("v", "'", "di'<ESC>pa' <ESC>x", { silent = true })
keymap.set("v", "ffh", "di'<ESC>pa' <ESC>x", { silent = true })

-- exaple text ->  (example text)
keymap.set("v", "(", "di(<ESC>pa) <ESC>x", { silent = true })
keymap.set("v", ")", "di(<ESC>pa) <ESC>x", { silent = true })
keymap.set("v", "ffg", "di(<ESC>pa) <ESC>x", { silent = true })

-- exaple text ->  [example text]
keymap.set("v", "[", "di[<ESC>pa] <ESC>x", { silent = true })
keymap.set("v", "]", "di[<ESC>pa] <ESC>x", { silent = true })
keymap.set("v", "ffd", "di[<ESC>pa] <ESC>x", { silent = true })

-- exaple text ->  {example text}
keymap.set("v", "{", "di{<ESC>pa} <ESC>x", { silent = true })
keymap.set("v", "}", "di{<ESC>pa} <ESC>x", { silent = true })
keymap.set("v", "ffk", "di{<ESC>pa} <ESC>x", { silent = true })

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

vim.cmd([[
filetype plugin indent on

" nnoremap q: <nop>
" nnoremap Q <nop>
" map q <Nop>

augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END

]])

-- toggle bufferline
keymap.set("n", "<leader>nn", function()
	vim.opt.showtabline = 0
end)
keymap.set("n", "<leader>mm", function()
	vim.opt.showtabline = 2
end)

--  window management
keymap.set("n", "<leader>sv", "<C-w>v", { silent = true }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { silent = true }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { silent = true }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { silent = true }) -- close current split window
-- rezize windows
keymap.set("n", "<leader>fh", ":vertical resize +10 <CR>==", { silent = true })
keymap.set("n", "<leader>fl", ":vertical resize -10 <CR>==", { silent = true })
keymap.set("n", "<leader>fk", ":horizontal resize +3 <CR>==", { silent = true })
keymap.set("n", "<leader>fj", ":horizontal resize -3 <CR>==", { silent = true })

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { silent = true }) -- toggle split window maximization

-- terminal
-- keymap.set("n", "<leader>nth", ":ToggleTerm size=15 dir=$(pwd) direction=horizontal<CR>", { silent = true }) -- toggle split window maximization
-- keymap.set("n", "<leader>ntv", ":ToggleTerm size=70 dir=$(pwd) direction=vertical<CR>", { silent = true }) -- toggle split window maximization

--TODO comments
keymap.set("n", "<leader>tt", ":TodoTelescope<CR>", { silent = true }) -- toggle split window maximization
