-- set leader key
vim.g.mapleader = " "
local keymap = vim.keymap

function setRemap(mode, mapping, action)
    vim.keymap.set(mode, mapping, action)
end

-- Set Explore as remap
setRemap("n", "<leader>pv", vim.cmd.Explore)

-- Set custom escape for workflow
setRemap("i", "jk", "<ESC>")

-- Move Text up and down
setRemap("n", "<A-j>", ":m .+1<CR>")
setRemap("n", "<A-k>", ":m .-2<CR>")

-- Stay in indent mode
setRemap("n", "J", ":m .+1<CR>")
setRemap("n", "<C-d>", "<C-d>zz")
setRemap("n", "<C-u>", "<C-u>zz")
-- setRemap("n", "n", "nzzzv")
-- setRemap("n", "N", "Nzzzv")

-- keep the copied word
setRemap("x", "<leader>p", "\"_dP")

-- Copy into Clipboard
setRemap("n", "<leader>y", "\"+y")
setRemap("v", "<leader>y", "\"+y")
setRemap("n", "<leader>Y", "\"+Y")

-- Add a new line without insert mode
setRemap("n", "<A-o>", "o<ESC><ESC>")
setRemap("n", "<A-O>", "O<ESC><ESC>")

-- Copy hole line where the curser is
setRemap("n", "<A-p>", "yyp<ESC>")

-- Disable capital Q
setRemap("n", "Q", "O<ESC><ESC>")

-- Move text up and down in visual mode
setRemap("v", "<A-k>", ":m .-2<CR>==")
setRemap("v", "<A-j>", ":m .+1<CR>==")
setRemap("v", "p", "\"_dp")

-- Visual Block
-- Move text up and down
setRemap("x", "J", ":m '>+1<CR>gv-gv")
setRemap("x", "K", ":m '<-2<CR>gv-gv")

-- LazyGit
setRemap("n", "<leader>lg", ".LazyGit<CR>")
