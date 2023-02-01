-- plugins
require("config.set-plugins")
require("config.plugins.nvim-tree")
require("config.plugins.lualine")
require("config.plugins.session")
require("config.plugins.telescope")
require("config.plugins.treesitter")
require("config.plugins.commenter")
require("config.plugins.colors")
require("config.plugins.git")
require("config.plugins.bufferline")
require("config.plugins.neoscroll")
require("config.plugins.rainbow")

-- my personal config
require("config.core.keymaps")
require("config.core.options")

-- language server protocol config
require("config.plugins.nvim-cmp")
require("config.plugins.lsp.mason")
require("config.plugins.lsp.lspsaga")
require("config.plugins.lsp.lspconfig")
require("config.plugins.lsp.null-ls")

-- colorscheme
require("config.set-colorscheme")
