local function my_on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end

	-- default mappings
	api.config.mappings.default_on_attach(bufnr)

	-- custom mappings
	-- vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up"))

	-- mappings = {
	--   list = { { key = "d", action = "trash" }, { key = "D", action = "remove" } },
	-- },
end

return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		-- empty setup using defaults
		require("nvim-tree").setup()

		-- OR setup with some options
		require("nvim-tree").setup({
			on_attach = my_on_attach,
			sort_by = "case_sensitive",
			view = {
				width = 30,
				side = "right",
			},
			renderer = {
				group_empty = true,
				root_folder_label = false,
			},
			filters = {
				dotfiles = true,
			},
		})
	end,
	-- config = function()
	--   local nvimtree = require("nvim-tree")
	--
	--   -- recommended settings from nvim-tree documentation
	--   vim.g.loaded_netrw = 1
	--   vim.g.loaded_netrwPlugin = 1
	--
	--   -- change color for arrows in tree to light blue
	--   vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])
	--
	--   -- configure nvim-tree
	--   nvimtree.setup({
	--     respect_buf_cwd = false,
	--     -- change folder arrow icons
	--     renderer = {
	--       highlight_git = true,
	--       icons = {
	--         glyphs = {
	--           folder = {
	--             arrow_closed = "", -- arrow when folder is closed
	--             arrow_open = "", -- arrow when folder is open
	--           },
	--           git = {
	--             unstaged = "✗",
	--             -- unstaged = "",
	--             staged = "✓",
	--             unmerged = "",
	--             -- unmerged = "",
	--             renamed = "➜",
	--             untracked = "★",
	--             -- untracked = "",
	--             deleted = "",
	--             ignored = "",
	--           },
	--         },
	--         webdev_colors = true,
	--       },
	--     },
	--     view = {
	--       side = "right",
	--       adaptive_size = true,
	--       hide_root_folder = true,
	--       width = 30,
	--       mappings = {
	--         list = { { key = "d", action = "trash" }, { key = "D", action = "remove" } },
	--       },
	--     },
	--     -- disable window_picker for
	--     -- explorer to work well with
	--     -- window splits
	--     actions = {
	--       open_file = {
	--         window_picker = {
	--           enable = true,
	--         },
	--       },
	--     },
	--     git = {
	--       ignore = false,
	--     },
	--   })
	--
	--   -- set keymaps
	--   local keymap = vim.keymap -- for conciseness
	--
	--   keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
	--   keymap.set(
	--     "n",
	--     "<leader>ef",
	--     "<cmd>NvimTreeFindFileToggle<CR>",
	--     { desc = "Toggle file explorer on current file" }
	--   ) -- toggle file explorer on current file
	--   keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
	--   keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
	-- end,
}
