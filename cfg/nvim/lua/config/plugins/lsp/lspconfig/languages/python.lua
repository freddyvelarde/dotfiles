require("config.plugins.lsp.lspconfig.config.on_attach")
require("lspconfig").pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	flags = lsp_flags,
})
