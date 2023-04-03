require("config.plugins.lsp.lspconfig.config.on_attach")

-- configure tailwindcss server
lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})
