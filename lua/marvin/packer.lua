return require('packer').startup(
function(use)
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use 'onsails/lspkind.nvim'
  use 'wbthomason/packer.nvim'
  use "rafamadriz/friendly-snippets"
  use 'nvim-lualine/lualine.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'CRAG666/code_runner.nvim'
  use 'folke/which-key.nvim'
  use 'rcarriga/nvim-notify'
  use('olimorris/onedarkpro.nvim')
  use("lukas-reineke/indent-blankline.nvim")
  use('theprimeagen/harpoon')
  use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
  use('nvim-treesitter/playground')
  use'norcalli/nvim-colorizer.lua'
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
  use{"akinsho/toggleterm.nvim"}
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons',
      },
      tag = 'nightly'
  }
  use {
      "windwp/nvim-autopairs",
  }
  end)
