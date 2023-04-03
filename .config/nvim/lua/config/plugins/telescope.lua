-- import telescope plugin safely
local telescope_setup, _ = pcall(require, "telescope")
if not telescope_setup then
	return
end

require("telescope").setup({
	defaults = {
		prompt_prefix = "   ",
		vimgrep_arguments = {},
		borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
	},
	file_ignore_patterns = {
		"./node_modules/*",
		"node_modules",
		"^node_modules/*",
		"node_modules/*",
		"venv/*",
		"venv",
		"./venv/*",
	},
	pickers = {
		buffers = {
			sort_lastused = true,
			theme = "dropdown",
			previewer = false,
			mappings = {
				n = {
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
