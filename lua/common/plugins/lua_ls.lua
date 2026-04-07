vim.lsp.config['lua_ls'] = {
    settings = {
        diagnostics = {
            globals = { 'vim' },
        },
        Lua = {
            runtime = {
                verion = 'LuaJIT',
            }
        },
    }
}

vim.lsp.enable('lua_ls')
