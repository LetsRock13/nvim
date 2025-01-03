local lsp_zero = require('lsp-zero')

local lsp_attach = function(client, bufnr)
	local opts = {buffer = bufnr}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition()  end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
	vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "gs", function() vim.lsp.buf.signature_help() end, opts)
	vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set({"n", "x"}, "<F3>", function() vim.lsp.buf.format({async = true}) end, opts)
	vim.keymap.set("n", "<F4>", function() vim.lsp.buf.code_action() end, opts)
end

lsp_zero.extend_lspconfig({
  sign_text = true,
  lsp_attach = lsp_attach
})

local cmp = require("cmp")

cmp.setup({
  sources = cmp.config.sources({ 
    {name = "nvim_lsp"},
    {name = "luasnip"},
  },{
	{name = "buffer"},
  }),
  mapping = cmp.mapping.preset.insert({
	['<TAB>'] = cmp.mapping.confirm({select = true}),
  }),
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      require('luasnip').lsp_expand(args.body)
    end
  }
})

