require("config.plugins.lsp.lspconfig.config.on_attach")
require("lspconfig").jedi_language_server.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	flags = lsp_flags,
})
