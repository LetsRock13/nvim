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
  },
})
