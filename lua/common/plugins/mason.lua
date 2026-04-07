
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = {'jdtls', 'ast_grep', 'lua_ls'},
    automatic_enable = {
        exclude = {
            'lua_ls',
        }
    },
})
