local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'rust_analyzer', 'jdtls', 'clangd', 'ast_grep', 'lua_ls'}, -- , 'lua_ls'
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({
				capabilities = lsp_capabilities,
			})
		end,
		lua_ls = function()
    	  require('lspconfig').lua_ls.setup({
    	    capabilities = lsp_capabilities,
    	    settings = {
    	      Lua = {
    	        runtime = {
    	          version = 'LuaJIT'
    	        },
    	        diagnostics = {
    	          globals = {'vim'},
    	        },
    	        workspace = {
    	          library = {
    	            vim.env.VIMRUNTIME,
    	          }
    	        }
    	      }
    	    }
    	  })
    	end,
	}
})
