-- plugins
require("config.set-plugins")
require("config.plugins.nvim-tree")
require("config.plugins.airline")
require("config.plugins.telescope")
require("config.plugins.treesitter")
-- require("config.plugins.coc")
require("config.plugins.colors")
require("config.plugins.indent")
require("config.plugins.git")

-- my config
require("config.core.keymaps")
require("config.core.options")

-- lsp
require("config.plugins.nvim-cmp")
require("config.plugins.lsp.mason")
require("config.plugins.lsp.lspsaga")
require("config.plugins.lsp.lspconfig")
require("config.plugins.lsp.null-ls")

-- colorscheme
require("config.set-colorscheme")
