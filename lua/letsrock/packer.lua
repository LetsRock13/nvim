-- This file can be loaded by calling `lua equire(r'plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({
	'rose-pine/neovim',
	as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('nvim-lua/plenary.nvim')
  use({
	  'theprimeagen/harpoon',
	  branch = "harpoon2",
	  requires = {{"nvim-lua/plenary.nvim"}}
  })
  use('mbbill/undotree')

  -- Load everything for the lsp config
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use({'neovim/nvim-lspconfig'})
  use({'williamboman/mason.nvim'})
  use({'williamboman/mason-lspconfig.nvim'})

  -- Vim-Be-Good
  use({'ThePrimeagen/vim-be-good'})

  -- nvim v0.7.2
  use({
	  "kdheepak/lazygit.nvim",
	  -- optional for floating window border decoration
	  requires = {
		  "nvim-lua/plenary.nvim",
	  },
  })

  -- nvim v0.7.2
  use({
	  "mg979/vim-visual-multi"
  })

  -- chentoast/marks
  use ({
  	"chentoast/marks.nvim"
  })
end)
