return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")
		wk.setup({
			plugins = {
				marks = false,
				registers = false,
				spelling = { enabled = false, suggestions = 20 },
				presets = {
					operators = false,
					motions = false,
					text_objects = false,
					windows = false,
					nav = false,
					z = false,
					g = false,
				},
			},
		})

		-- local mappings = {
		--   q = { ":q<cr>", "Quit" },
		--   Q = { ":wq<cr>", "Save & Quit" },
		--   w = { ":w<cr>", "Save" },
		--   x = { ":bdelete<cr>", "Close" },
		--   E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
		--   f = { ":Telescope find_files<cr>", "Telescope Find Files" },
		--   r = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
		--   t = {
		--     t = { ":ToggleTerm<cr>", "Split Below" },
		--   },
		--   l = {
		--     name = "LSP",
		--     i = { ":LspInfo<cr>", "Connected Language Servers" },
		--     k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
		--     K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
		--     w = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>", "Add Workspace Folder" },
		--     W = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>", "Remove Workspace Folder" },
		--     l = {
		--       "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>",
		--       "List Workspace Folders",
		--     },
		--     t = { "<cmd>lua vim.lsp.buf.type_definition()<cr>", "Type Definition" },
		--     d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go To Definition" },
		--     D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go To Declaration" },
		--     r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		--     R = { "<cmd>Lspsaga rename<cr>", "Rename" },
		--     a = { "<cmd>Lspsaga code_action<cr>", "Code Action" },
		--     e = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show Line Diagnostics" },
		--     n = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Go To Next Diagnostic" },
		--     N = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Go To Previous Diagnostic" },
		--   },
		--   z = {
		--     name = "Focus",
		--     z = { ":ZenMode<cr>", "Toggle Zen Mode" },
		--     t = { ":Twilight<cr>", "Toggle Twilight" },
		--   },
		--   p = {
		--     name = "Packer",
		--     r = { ":PackerClean<cr>", "Remove Unused Plugins" },
		--     c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
		--     i = { ":PackerInstall<cr>", "Install Plugins" },
		--     p = { ":PackerProfile<cr>", "Packer Profile" },
		--     s = { ":PackerSync<cr>", "Sync Plugins" },
		--     S = { ":PackerStatus<cr>", "Packer Status" },
		--     u = { ":PackerUpdate<cr>", "Update Plugins" },
		--   },
		-- }
		wk.add({
			{ "<leader>f", group = "file" }, -- group
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n" },
			{
				"<leader>fb",
				function()
					print("hello")
				end,
				desc = "Foobar",
			},
			{ "<leader>fn", desc = "New File" },
			{ "<leader>f1", hidden = true }, -- hide this keymap
			{ "<leader>w", proxy = "<c-w>", group = "windows" }, -- proxy to window mappings
			{
				"<leader>b",
				group = "buffers",
				expand = function()
					return require("which-key.extras").expand.buf()
				end,
			},
			{
				-- Nested mappings are allowed and can be added in any order
				-- Most attributes can be inherited or overridden on any level
				-- There's no limit to the depth of nesting
				mode = { "n", "v" }, -- NORMAL and VISUAL mode
				{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
				{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
			},
		})

		-- local opts = { prefix = "<leader>" }
		-- wk.add(mappings, opts)
	end,

	-- opts = {
	--   -- your configuration comes here
	--   -- or leave it empty to use the default settings
	--   -- refer to the configuration section below
	-- },
	-- keys = {
	--   {
	--     "<leader>?",
	--     function()
	--       require("which-key").show({ global = false })
	--     end,
	--     desc = "Buffer Local Keymaps (which-key)",
	--   },
	-- },
}
