-- set leader key
vim.g.mapleader = " "

local listKeyMap = {
    -- Set Explore as remap
    -- setRemap("n", "<leader>pv", vim.cmd.Explore)
    {"n", "<leader>pv", vim.cmd.Explore},
    -- Set custom escape for workflow
    {"i", "jk", "<ESC>"},
    -- Move Text up and down
    {"n", "<A-k>", ":m .-2<CR>"},
    {"n", "<A-j>", ":m .+1<CR>"},
    -- Stay in visual mode when indent
    {"v", "<", "<<CR>gv-gv"},
    {"v", ">", "><CR>gv-gv"},
    -- Move hole section in doc
    {"n", "<C-d>", "<C-d>zz"},
    {"n", "<C-u>", "<C-u>zz"},
    -- keep the copied word
    {"x", "<leader>p", "\"_dP"},
    -- keep copied from visual mode
    {"v", "p", "\"_dp"},
    -- Copy into Clipboard
    {"n", "<leader>y", "\"+y"},
    {"v", "<leader>y", "\"+y"},
    {"n", "<leader>Y", "\"+Y"},
    -- Add a new line without insert mode
    {"n", "<A-o>", "o<ESC><ESC>"},
    {"n", "<A-O>", "O<ESC><ESC>"},
    -- Copy hole line where the curser is
    {"n", "<A-p>", "yyp<ESC>"},
    -- Disable capital Q
    {"n", "Q", "NOP"},
    -- Visual Block
    -- Move text up and down
    {"x", "<A-j>", ":m '>+1<CR>gv-gv"},
    {"x", "<A-k>", ":m '<-2<CR>gv-gv"},
    -- LazyGit
    {"n", "<leader>lg", ".LazyGit<CR>"},
    -- sourround
    {"n", "<leader>sr", "ciw\"\"<ESC>P"},
}

-- setRemap("n", "n", "nzzzv")
-- setRemap("n", "N", "Nzzzv")

local function setRemap()

    for _, value in ipairs(listKeyMap) do
        local mode, mapping, action = value[1], value[2], value[3]
        vim.keymap.set(mode, mapping, action)
    end

end

setRemap()
