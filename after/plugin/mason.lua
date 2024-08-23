require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'ast-grep'},
	handlers = {
		function(server_name)
			require('lspconfig')[server_name].setup({})
		end
	}
})
