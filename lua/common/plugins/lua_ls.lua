vim.lsp.config['lua_ls'] = {
    settings = {
        Lua = {
            runtime = {
                verion = 'LuaJIT',
            },
            diagnostics = {
                globals = {
                    'vim'
                },
            },
        },
    }
}

vim.lsp.enable('lua_ls')
