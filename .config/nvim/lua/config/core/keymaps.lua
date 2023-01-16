-- vim leader key
vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- nvim tree toggle
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- delete word
keymap.set("n", "<C-w>", "daw")

-- find word
keymap.set("n", "<leader>fw", "#")

-- tmux vim moves
keymap.set("n", "<leader>l", ":<C-U>TmuxNavigateRight<cr>")
keymap.set("n", "<leader>h", ":<C-U>TmuxNavigateLeft<cr>")
keymap.set("n", "<leader>j", ":<C-U>TmuxNavigateDown<cr>")
keymap.set("n", "<leader>k", ":<C-U>TmuxNavigateUp<cr>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files <CR>")
keymap.set("n", "<leader>fg", ":Telescope live_grep <CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")

-- my own keymaps
keymap.set("n", "<C-a>", "ggVG") -- to select all file

keymap.set("n", "<A-k>", ":m-2<CR>==")
keymap.set("n", "<A-j>", ":m+<CR>==")
keymap.set("n", "<C-S>", ":w!<CR>")

-- move entire lines of code
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- nerd commenter
keymap.set("n", "<C-/>", "<Plug>NERDCommenterToggle")
keymap.set("v", "<C-/>", "<Plug>NERDCommenterToggle")
keymap.set("n", "gc", "<Plug>NERDCommenterToggle")
keymap.set("v", "gcc", "<Plug>NERDCommenterToggle")

-- move tabs
keymap.set("n", "<leader>w", ":bnext <CR>==")
keymap.set("n", "<leader>q", ":bprevious <CR>==")
keymap.set("n", "<leader>x", ":bdelete <CR>==")

keymap.set("n", "<a-.>", ":bnext <CR>==")
keymap.set("n", "<a-,>", ":bprevious <CR>==")
keymap.set("n", "<a-x>", ":bdelete <CR>==")

keymap.set("n", "<leader>t", ":AirlineToggle <CR>==")

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
vim.cmd([[
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap < <><left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<Esc>O<BS><Tab>
inoremap <C-Return> <CR><CR><C-o>k<Tab>
]])
