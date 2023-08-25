vim.o.sessionoptions = "buffers,curdir,folds,winpos,winsize"
require("persisted").setup({
	save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- directory where session files are saved
	command = "VimLeavePre", -- the autocommand for which the session is saved
	silent = false, -- silent nvim message when sourcing session file
	use_git_branch = false, -- create session files based on the branch of the git enabled repository
	follow_cwd = true, -- change session file name to match current working directory if it changes
	autosave = true, -- automatically save session files when exiting Neovim
	should_autosave = nil, -- function to determine if a session should be autosaved
	autoload = true, -- automatically load the session for the cwd on Neovim startup
	allowed_dirs = nil, -- table of dirs that the plugin will auto-save and auto-load from
	ignored_dirs = nil, -- table of dirs that are ignored when auto-saving and auto-loading
	before_save = nil, -- function to run before the session is saved to disk
	after_save = nil, -- function to run after the session is saved to disk
	after_source = nil, -- function to run after the session is sourced
	on_autoload_no_session = function()
		vim.notify("No existing session to load.")
	end,
	telescope = { -- options for the telescope extension
		before_source = nil, -- function to run before the session is sourced via telescope
		after_source = nil, -- function to run after the session is sourced via telescope
		reset_prompt_after_deletion = true, -- whether to reset prompt after session deleted
	},
})
