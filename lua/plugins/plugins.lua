
return {
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = {'nvim-lua/plenary.nvim'} 
	},
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},
	{ 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
	{ 'nvim-treesitter/playground' },
 	{'nvim-lua/plenary.nvim'},
	{
	 'theprimeagen/harpoon',
	 branch = 'harpoon2',
	 dependencies = {'nvim-lua/plenary.nvim'}
	},
	{'mbbill/undotree'},
	-- Load everything for the lsp config
	{'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	-- Vim-Be-Good
	{'ThePrimeagen/vim-be-good'},
	-- nvim v0.7.2
	{
	 'kdheepak/lazygit.nvim',
	 -- optional for floating window border decoration
	 dependencies = {
	     'nvim-lua/plenary.nvim',
	 },
	},
	-- chentoast/marks
	{
		'chentoast/marks.nvim'
	}
	-- nvim v0.7.2
	--  return {{
	--     'mg979/vim-visual-multi'
	-- }}
}





