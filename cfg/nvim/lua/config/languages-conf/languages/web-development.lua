-- configure html server
lspconfig["html"].setup({})

-- configure css server
lspconfig["cssls"].setup({})

-- configure emmet language server
lspconfig["emmet_ls"].setup({
	filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
})
