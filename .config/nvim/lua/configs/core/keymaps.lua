vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("n", "<C-a>", "ggVG")

keymap.set("i", "ii", "<ESC>")

keymap.set("n", "<C-/>", ":Commentary<CR>")
keymap.set("v", "<C-/>", ":Commentary<CR>")

-- keymap.set("n", "ww", ":<CR>")
keymap.set("n", "tt", ":")

keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>")

keymap.set("n", "<leader>h", ":AirlineToggle<CR>")

keymap.set("n", "<C-z>", ":u<CR>")

keymap.set("n", "<A-k>", ":m-2<CR>")
keymap.set("n", "<A-j>", ":m+<CR>")

keymap.set("n", "<leader>nh", ":nohl<CR>") -- this is to clean when search words
keymap.set("n", "<C-s>", ":w!<CR>")

keymap.set("n", "x", '"_x')

-- windows
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<A-,>", ":bprevious<CR>")
keymap.set("n", "<A-.>", ":bnext<CR>")
keymap.set("n", "<A-x>", ":bdelete<CR>")

-- telescope setup
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
