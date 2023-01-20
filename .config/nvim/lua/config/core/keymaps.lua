--------------------------
--- My Neovim Keybinds ---
--------------------------

-- vim leader key
vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { silent = true })

-- nvim tree toggle
keymap.set("n", "<leader>b", ":NvimTreeToggle<CR>", { silent = true })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { silent = true })

-- delete single character without copying into register
keymap.set("n", "x", '"_x', { silent = true })

-- delete a single word
keymap.set("n", "<C-w>", "diwb", { silent = true })

-- find word
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

-- my own keymaps
keymap.set("n", "<C-a>", "ggVG", { silent = true }) -- to select all file

keymap.set("n", "<A-k>", ":m-2<CR>==", { silent = true })
keymap.set("n", "<A-j>", ":m+<CR>==", { silent = true })
keymap.set("n", "<C-S>", ":w!<CR>", { silent = true })

-- move entire lines of code
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- nerd commenter
keymap.set("n", "<C-/>", "<Plug>NERDCommenterToggle", { silent = true })
keymap.set("v", "<C-/>", "<Plug>NERDCommenterToggle", { silent = true })
keymap.set("n", "gc", "<Plug>NERDCommenterToggle", { silent = true })
keymap.set("v", "gcc", "<Plug>NERDCommenterToggle", { silent = true })

-- move tabs
keymap.set("n", "<leader>w", ":bnext <CR>==", { silent = true })
keymap.set("n", "<leader>q", ":bprevious <CR>==", { silent = true })
keymap.set("n", "<leader>x", ":bdelete <CR>==", { silent = true })

keymap.set("n", "<A-.>", ":bnext <CR>==", { silent = true })
keymap.set("n", "<A-,>", ":bprevious <CR>==", { silent = true })
keymap.set("n", "<A-x>", ":bdelete <CR>==", { silent = true })

keymap.set("v", '"', 'da"<ESC>pa" <ESC>', { silent = true })
keymap.set("v", "`", "da`<ESC>pa` <ESC>", { silent = true })
keymap.set("v", "'", "da'<ESC>pa' <ESC>", { silent = true })
keymap.set("v", "(", "da(<ESC>pa) <ESC>", { silent = true })
keymap.set("v", "fff", "da[<ESC>pa] <ESC>", { silent = true })
keymap.set("v", "{", "da{<ESC>pa} <ESC>", { silent = true })

--  restart lsp server
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

--  window management
keymap.set("n", "<leader>sv", "<C-w>v", { silent = true }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { silent = true }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { silent = true }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { silent = true }) -- close current split window

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { silent = true }) -- toggle split window maximization
