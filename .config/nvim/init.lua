-- plugins
require("config.set-plugins")
vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
require("config.plugins.nvim-tree")
require("config.plugins.airline")
require("config.plugins.telescope")
require("config.plugins.treesitter")
-- require("config.plugins.coc")
require("config.plugins.colors")
require("config.plugins.indent")
require("config.plugins.git")
require("config.plugins.neoformat")

-- lsp
require("config.plugins.nvim-cmp")
require("config.plugins.lsp.mason")
require("config.plugins.lsp.lspsaga")
require("config.plugins.lsp.lspconfig")
require("config.plugins.lsp.null-ls")

-- my config
require("config.core.keymaps")
require("config.core.options")

-- colorscheme
require("config.set-colorscheme")