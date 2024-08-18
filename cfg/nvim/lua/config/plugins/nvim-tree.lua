return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- optional, for file icons

		config = function()
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
					root_folder_label = false,
					icons = {
						glyphs = {
							folder = {
								-- arrow_closed = "", -- arrow when folder is closed
								arrow_closed = "", -- arrow when folder is closed
								arrow_open = "", -- arrow when folder is open
							},
							git = {
								unstaged = "✗",
								-- unstaged = "",
								staged = "✓",
								unmerged = "",
								-- unmerged = "",
								renamed = "➜",
								untracked = "★",
								-- untracked = "",
								deleted = "",
								ignored = "",
							},
						},
						webdev_colors = true,
					},
				},

				view = {
					side = "right",
					adaptive_size = true,
					-- hide_root_folder = true,
					width = 30,
					-- mappings = {
					--   list = { { key = "d", action = "trash" }, { key = "D", action = "remove" } },
					-- },
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
		end,
	},
}

-- return {
--   "nvim-neo-tree/neo-tree.nvim",
--   branch = "v3.x",
--   dependencies = {
--     "nvim-lua/plenary.nvim",
--     "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
--     "MunifTanjim/nui.nvim",
--     -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
--   },
--   config = function()
--     require("neo-tree").setup({
--       filesystem = {
--         bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
--         window = {
--           position = "float", -- left, right or float
--
--           mappings = {
--             ["d"] = function(state)
--               local inputs = require("neo-tree.ui.inputs")
--               local path = state.tree:get_node().path
--               local msg = "move to trash? " .. path
--               inputs.confirm(msg, function(confirmed)
--                 if not confirmed then
--                   return
--                 end
--
--                 vim.fn.system({ "trash", vim.fn.fnameescape(path) })
--                 require("neo-tree.sources.manager").refresh(state.name)
--               end)
--             end,
--             ["o"] = {
--               "open",
--               nowait = false,
--             },
--           },
--         },
--
--         filtered_items = {
--           hide_dotfiles = false,
--         },
--       },
--     })
--   end,
-- }
