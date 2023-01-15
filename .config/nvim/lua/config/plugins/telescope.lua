-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

require("telescope").setup({
	defaults = {
		layout_strategy = "vertical",

		layout_config = {
			prompt_position = "bottom",
		},
	},
	pickers = {
		buffers = {
			sort_lastused = true,
			theme = "dropdown",
			previewer = false,
			mappings = {},
		},
		find_files = {
			theme = "dropdown",
		},
	},
	extensions = {},
})
