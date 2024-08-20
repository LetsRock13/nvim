require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'rust_analyzer', 'jdtls', 'clangd'},
	function(server_name)
		require('lspconfig')[server_name].setup({})
	end,
})
