require("config.packer-plugins")
require("config.plugins.nvim-tree")
require("config.plugins.lualine")
require("config.plugins.telescope")
require("config.plugins.treesitter")
require("config.plugins.commenter")
require("config.plugins.colors")
require("config.plugins.git")
require("config.plugins.bufferline")
require("config.plugins.neoscroll")
require("config.plugins.autopairs")
require("config.plugins.todo-comments")

-- my personal config
require("config.core.keymaps")
require("config.core.options")

-- language server protocol config
require("config.plugins.nvim-cmp")
require("config.plugins.lsp.mason")
require("config.plugins.lsp.lspconfig")
require("config.plugins.lsp.null-ls")
require("config.plugins.lsp.lspsaga")

-- colorscheme
require("config.set-colorscheme")
