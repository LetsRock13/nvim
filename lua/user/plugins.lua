local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here
  use "wbthomason/packer.nvim" -- Have packer manage itself

  -- misc
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use {"folke/trouble.nvim"}

  -- tmux plugin for easy navigation
  use "christoomey/vim-tmux-navigator"

  -- version control
  use {"kdheepak/lazygit.nvim",
        requires = {
          "nvim-lua/plenary.nvim",
        }
      }

  -- treesitter: code highlighting
  use {
      "nvim-treesitter/nvim-treesitter",
      run = function()
          pcall(require("nvim-treesitter.install").update {
              with_sync = true,
          })
      end,
  }
  use { -- Additional text objects via treesitter
      "nvim-treesitter/nvim-treesitter-textobjects",
      after = "nvim-treesitter",
  }

  -- lsp: language server protocol
  use {"folke/neodev.nvim"}

  use {
      "williamboman/mason.nvim",
      opts = {
        registries = {
         "github:nvim-java/mason-registry",
         "github:mason-org/mason-registry",
        }
      }
    }

  use {"neovim/nvim-lspconfig"}

  use {"williamboman/mason-lspconfig.nvim"} 

  use {
    "nvim-java/nvim-java",
    requires = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
    }
  }

  -- dpa: debuger adapter protocol
  use {"mfussenegger/nvim-dap"}

  -- linter
  use {"mfussenegger/nvim-lint"}

  -- formatter
  use {"mhartington/formatter.nvim"}

  -- nvim-cmp: autocompletition
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "L3MON4D3/LuaSnip" }
  use { "saadparwaiz1/cmp_luasnip" }

  -- telescope
  use { "nvim-telescope/telescope.nvim" }
    -- Fuzzy Finder Algorithm which requires local dependencies to be built. Only load if `make` is available
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
        cond = vim.fn.executable("make") == 1,
    }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
