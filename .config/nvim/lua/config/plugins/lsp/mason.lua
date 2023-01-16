-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"html",
		"cssls",
		"emmet_ls",
		"tsserver",
		"jedi_language_server",
		"intelephense",
		"rust_analyzer",
		"jdtls",
		"gopls",
		"dockerls",
		"tailwindcss",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"black",
		"gofumt",
		"clang-format",
		"php-cs-fixer",
		"rustfmt",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})

local DEFAULT_SETTINGS = {
	keymaps = {
		-- Keymap to expand a package
		toggle_package_expand = "<CR>",
		-- Keymap to install the package under the current cursor position
		install_package = "i",
		-- Keymap to reinstall/update the package under the current cursor position
		update_package = "u",
		-- Keymap to check for new version for the package under the current cursor position
		check_package_version = "c",
		-- Keymap to update all installed packages
		update_all_packages = "U",
		-- Keymap to check which installed packages are outdated
		check_outdated_packages = "C",
		-- Keymap to uninstall a package
		uninstall_package = "X",
		-- Keymap to cancel a package installation
		cancel_installation = "<C-c>",
		-- Keymap to apply language filter
		apply_language_filter = "<C-f>",
	},
}
