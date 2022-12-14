-- vim leader key
vim.g.mapleader = " " 
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")

-- nvim tree toggle
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

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


keymap.set("n", "<C-/>", ":Commentary<CR>")
keymap.set("v", "<C-/>", ":Commentary<CR>")
