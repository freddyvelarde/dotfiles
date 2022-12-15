local opt = vim.opt -- for conciseness

-- vim.cmd([[
--   syntax enable
--   colorscheme rubber
-- ]])

--line numbers
opt.relativenumber = true
opt.number = true

opt.syntax = "on"
-- tabs and ident
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

opt.cursorcolumn = true
-- appearence
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
