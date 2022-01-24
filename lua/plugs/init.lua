-- Packer Package Management for Neovim

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

local cmd = vim.cmd
cmd [[packadd packer.nvim]]

-- << Packages >>
function init()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use { 'rose-pine/neovim', as = 'rose-pine' }

  -- Tree Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Indent Line
  use 'lukas-reineke/indent-blankline.nvim'

  -- autopair << GitHub https://github.com/windwp/nvim-autopairs >>
  use {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  }

  -- Icons from devicons << GitHub https://github.com/kyazdani42/nvim-web-devicons >>
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- LSP (Language Server Protocol)
  use 'neovim/nvim-lspconfig'

  -- autocomplete
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- git labels
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('gitsigns').setup()
    end
  }

end


-- << Adding Packages >>
return require('packer').startup(init)