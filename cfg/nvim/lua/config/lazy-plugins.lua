local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"wbthomason/packer.nvim",
	"folke/tokyonight.nvim",
	"windwp/nvim-autopairs",

	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		commit = "9c97e6449b0b0269bd44e1fd4857184dfa57bb4c",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},
	"christoomey/vim-tmux-navigator",
	"vim-airline/vim-airline",
	"vim-airline/vim-airline-themes",
	"preservim/nerdcommenter",
	{
		"folke/todo-comments.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	},
	{ "nvim-telescope/telescope.nvim", branch = "0.1.x" }, -- fuzzy finder
	"nvim-lua/plenary.nvim", -- lua functions that many plugins
	{
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	},
	"tpope/vim-surround",
	"lukas-reineke/indent-blankline.nvim",
	"hrsh7th/nvim-cmp", -- completion plugin
	"hrsh7th/cmp-buffer", -- source for text in buffer
	"hrsh7th/cmp-path", -- source for file system paths
	"L3MON4D3/LuaSnip", -- snippet engine
	"saadparwaiz1/cmp_luasnip", -- for autocompletion
	"rafamadriz/friendly-snippets", --  ful snippets
	"williamboman/mason.nvim", -- in charge of managing lsp servers, linters & formatters
	"williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig
	"neovim/nvim-lspconfig", -- easily configure language servers
	"hrsh7th/cmp-nvim-lsp", -- for autocompletion
	{ "glepnir/lspsaga.nvim", branch = "main" }, -- enhanced lsp uis
	-- { "kkharji/lspsaga.nvim" }, -- nightly
	-- { "kkharji/lspsaga.nvim", branch = "nvim6.0" or "nvim51" }, -- for specific version
	"onsails/lspkind.nvim", -- vs-code like icons for autocompletion
	"folke/neodev.nvim",
	"jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
	"jayp0521/mason-null-ls.nvim", -- bridges gap b/w mason & null-ls
	"lewis6991/gitsigns.nvim", -- show line modifications on left hand side
	{
		"nvim-lualine/lualine.nvim",
		-- requires = { "kyazdani42/nvim-web-devicons", opt = true },
	},
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	"karb94/neoscroll.nvim",

	-- markdown live server
	{
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	"szw/vim-maximizer", -- maximizes and restores current window
})
