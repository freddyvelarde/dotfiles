-- auto install packer if not installed
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
  use({ 
    'ayu-theme/ayu-vim'
  })
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })

  -- file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  -- tmux naviagator
  use ( 'christoomey/vim-tmux-navigator')

  -- airline
  use ( 
    'vim-airline/vim-airline',
    'vim-airline/vim-airline-themes'
  )

  -- commentary
  use ('chrisbra/vim-commentary')

    -- fuzzy finding w/ telescope
  use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
  use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

  -- treesitter
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- coc xd
  use {'neoclide/coc.nvim', branch = 'release'}

  -- basic plugins
  use 'tpope/vim-surround'
  use 'jiangmiao/auto-pairs' 



  if packer_bootstrap then
    require("packer").sync()
  end
end)

