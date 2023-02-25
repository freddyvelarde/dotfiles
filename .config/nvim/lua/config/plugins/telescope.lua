-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

require("telescope").setup({
	defaults = {},
	pickers = {
		buffers = {
			sort_lastused = true,
			theme = "dropdown",
			previewer = false,
			mappings = {
				n = {
					-- ["o"] = "open",
					["q"] = require("telescope.actions").close,
				},
			},
		},
		find_files = {
			theme = "dropdown",
			layout_strategy = "horizontal",
			layout_config = { width = 0.9, height = 0.9 },
		},
	},
	extensions = {},
})
