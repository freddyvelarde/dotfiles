local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- languages
require("config.plugins.lsp.lspconfig.languages.typescript")
require("config.plugins.lsp.lspconfig.languages.go")
require("config.plugins.lsp.lspconfig.languages.python")
require("config.plugins.lsp.lspconfig.languages.web-development")
require("config.plugins.lsp.lspconfig.languages.lua")
-- require("config.plugins.lsp.lspconfig.languages.docker")
require("config.plugins.lsp.lspconfig.languages.rust")
require("config.plugins.lsp.lspconfig.languages.php")
require("config.plugins.lsp.lspconfig.languages.java")
require("config.plugins.lsp.lspconfig.languages.markdown")
require("config.plugins.lsp.lspconfig.languages.tailwindcss")
