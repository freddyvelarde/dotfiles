-- lazy config
require("config.core") -- my own config
require("config.lazy") -- plugins config

require("config.set-colorscheme") -- colorscheme
require("config.languages-conf") -- languages config for lsp

-- set colorscheme
vim.cmd.colorscheme("midnight")
