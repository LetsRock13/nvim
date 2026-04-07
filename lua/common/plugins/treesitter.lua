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

local treesitter = require('nvim-treesitter')

treesitter.setup({
    install_dir = vim.fn.stdpath('data') .. '/site'
})

treesitter.install({ 
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
 })
