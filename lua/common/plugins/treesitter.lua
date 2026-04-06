local listOfLang = {
    "java",
    "python",
    "bash",
    "gdscript",
    "c",
    "lua",
    "vim",
    "query",
    "markdown",
    "markdown_inline",
    "c_sharp",
    "sql",
    "nasm",
    "make",
    "json",
    "glsl",
    "gdshader",
    "csv",
    "yaml",
    "xml",
}

require('nvim-treesitter').setup({
        ensure_installed = listOfLang;
        sync_install = true,
        
        highlight = {
            enable = false,
            additional_vim_regex_highlighting = false,
        }
})
