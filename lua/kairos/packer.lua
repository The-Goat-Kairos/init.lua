vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use { 
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
    'rose-pine/neovim',
  	as = 'rose-pine',
  	config = function()
		vim.cmd('colorscheme rose-pine')
  	end
  })

  use('ThePrimeagen/vim-be-good')
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-lua/plenary.nvim')
  use('ThePrimeagen/harpoon')
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},


		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }

  use {
	  "williamboman/mason.nvim",
	  "williamboman/mason-lspconfig.nvim",
	  "neovim/nvim-lspconfig",
  }
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')

  use { 'L3MON4D3/LuaSnip' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use {
	  'hrsh7th/nvim-cmp',
	  config = function ()
		  require'cmp'.setup {
			  snippet = {
				  expand = function(args)
					  require'luasnip'.lsp_expand(args.body)
				  end
			  },

			  sources = {
				  { name = 'luasnip' },
				  -- more sources
			  },
		  }
	  end
  }
  use { 'saadparwaiz1/cmp_luasnip' }
  use "rafamadriz/friendly-snippets"
 end)
