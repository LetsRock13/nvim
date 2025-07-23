
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
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	-- Autocomplition
	{'neovim/nvim-lspconfig'},
	{'SirVer/ultisnips'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-calc'},
	{'hrsh7th/cmp-calc'},
	{'f3fora/cmp-spell'},
	{'tamago324/cmp-zsh'},
	{'quangnguyen30192/cmp-nvim-ultisnips'},
	{'hrsh7th/cmp-nvim-lsp-signature-help'},
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
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ 'saadparwaiz1/cmp_luasnip' },
	{"atiladefreitas/dooing"},
}





