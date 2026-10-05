return {
	{ 'nvim-telescope/telescope.nvim',
		dependencies = {'nvim-lua/plenary.nvim'}
	},
	{
		'rose-pine/neovim',
		name = 'rose-pine',
		config = function()
			vim.cmd('colorscheme rose-pine')
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		branch = "main",
		build = ':TSUpdate'
	},
 	{'nvim-lua/plenary.nvim'},
	{'mbbill/undotree'},
	-- Load everything for the lsp config
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{
		-- https://github.com/AlexandrosAlexiou/kotlin.nvim
		'AlexandrosAlexiou/kotlin.nvim',
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"stevearc/oil.nvim",
			"folke/trouble.nvim",
    	},
	},
	-- Autocomplition
	{'neovim/nvim-lspconfig'},
	{'SirVer/ultisnips'},
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-cmdline'},
	{'hrsh7th/cmp-path'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-calc'},
	{'f3fora/cmp-spell'},
	{'tamago324/cmp-zsh'},
	{'quangnguyen30192/cmp-nvim-ultisnips'},
	{'hrsh7th/cmp-nvim-lsp-signature-help'},
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
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	--{'mfussenegger/nvim-dap'}
	{
		'catgoose/nvim-colorizer.lua'
	},
	{
		'MeanderingProgrammer/render-markdown.nvim',
		dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },            -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },        -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		---opts = {},
	},
	{
	  'stevearc/oil.nvim',
	  ---@module 'oil'
	  ---@type oil.SetupOpts
	  opts = {},
	  -- Optional dependencies
	  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	  lazy = false,
	}
}
