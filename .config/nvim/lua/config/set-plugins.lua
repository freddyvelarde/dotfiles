-- auto install packer if not installedsetset
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	-- colorschemes
	use({ "ellisonleao/gruvbox.nvim" })
	use("folke/tokyonight.nvim")

	-- auto pairs
	use("windwp/nvim-autopairs")

	-- terminal - toggleterm
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- file explorer
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	-- tmux naviagator
	use("christoomey/vim-tmux-navigator")

	-- airline
	use("vim-airline/vim-airline")
	use("vim-airline/vim-airline-themes")

	-- commentary
	use("preservim/nerdcommenter")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- use to make quotes ""
	use("tpope/vim-surround")

	use({
		"RRethy/vim-hexokinase",
		run = "cd ~/.local/share/nvim/site/pack/packer/start/vim-hexokinase && make hexokinase",
	})

	-- indent lines
	use("lukas-reineke/indent-blankline.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
	use("folke/neodev.nvim")

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	-- lualine use this instead of airline
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- bufferline
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })

	-- dashboard
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	})

	-- session manager project
	use({
		"olimorris/persisted.nvim",
		config = function()
			require("persisted").setup()
			require("telescope").load_extension("persisted") -- To load the telescope extension
		end,
	})

	-- smooth scroll
	use("karb94/neoscroll.nvim")

	-- markdown live server
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use("szw/vim-maximizer") -- maximizes and restores current window

	if packer_bootstrap then
		require("packer").sync()
	end
end)
