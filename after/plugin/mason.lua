require('mason').setup({})
require('mason-lspconfig').setup({
	rensure_installed = {'rust_analyzer', 'jdtls', 'clangd', 'ast_grep'}, -- , 'lua_ls'
	handlers = {
		function(server_name)
			-- require('lspconfig')[server_name].setup({})
		end
	}
})
