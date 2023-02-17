-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
	respect_buf_cwd = false,
	-- change folder arrow icons
	renderer = {
		highlight_git = true,
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
				git = {
					-- unstaged = "✗",
					unstaged = "",
					staged = "✓",
					-- unmerged = "",
					unmerged = "",
					renamed = "➜",
					-- untracked = "★",
					untracked = "",
					deleted = "",
					ignored = "",
				},
			},
			webdev_colors = true,
		},
	},
	view = {
		side = "right",
		adaptive_size = false,
		hide_root_folder = true,
		width = 25,
		mappings = {
			list = { { key = "d", action = "trash" }, { key = "D", action = "remove" } },
		},
	},
	-- disable window_picker for
	-- explorer to work well with
	-- window splits
	actions = {
		open_file = {
			window_picker = {
				enable = true,
			},
		},
	},
	git = {
		ignore = false,
	},
})
