
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
	},
	{
  		'brenton-leighton/multiple-cursors.nvim',
  		version = "*",  -- Use the latest tagged version
  		opts = {},  -- This causes the plugin setup function to be called
  		keys = {
  		  {"<C-j>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "x"}, desc = "Add cursor and move down"},
  		  {"<C-k>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "x"}, desc = "Add cursor and move up"},
 
  		  {"<C-Up>", "<Cmd>MultipleCursorsAddUp<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move up"},
  		  {"<C-Down>", "<Cmd>MultipleCursorsAddDown<CR>", mode = {"n", "i", "x"}, desc = "Add cursor and move down"},
 
  		  {"<C-LeftMouse>", "<Cmd>MultipleCursorsMouseAddDelete<CR>", mode = {"n", "i"}, desc = "Add or remove cursor"},
 
  		  {"<Leader>a", "<Cmd>MultipleCursorsAddMatches<CR>", mode = {"n", "x"}, desc = "Add cursors to cword"},
  		  {"<Leader>A", "<Cmd>MultipleCursorsAddMatchesV<CR>", mode = {"n", "x"}, desc = "Add cursors to cword in previous area"},

  	      {"<Leader>d", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Add cursor and jump to next cword"},
  	      {"<Leader>D", "<Cmd>MultipleCursorsJumpNextMatch<CR>", mode = {"n", "x"}, desc = "Jump to next cword"},
 
 -- 	      {"<Leader>l", "<Cmd>MultipleCursorsLock<CR>", mode = {"n", "x"}, desc = "Lock virtual cursors"},
  	   },
	},
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		dependencies = { "rafamadriz/friendly-snippets" },
	},
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 
		"nvim-tree/nvim-tree.lua",
  		version = "*",
  		lazy = false,
  		dependencies = {
  		  "nvim-tree/nvim-web-devicons",
  		}
	}
}





