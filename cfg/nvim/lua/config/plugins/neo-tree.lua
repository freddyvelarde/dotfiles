return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
				window = {
					position = "float", -- left, right or float

					mappings = {
						["d"] = function(state)
							local inputs = require("neo-tree.ui.inputs")
							local path = state.tree:get_node().path
							local msg = "move to trash? " .. path
							inputs.confirm(msg, function(confirmed)
								if not confirmed then
									return
								end

								vim.fn.system({ "trash", vim.fn.fnameescape(path) })
								require("neo-tree.sources.manager").refresh(state.name)
							end)
						end,
						["o"] = {
							"open",
							nowait = false,
						},
					},
				},

				filtered_items = {
					hide_dotfiles = false,
				},
			},
		})
	end,
}
