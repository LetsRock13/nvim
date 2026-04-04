vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Explore)

-- Custom escape sequens
vim.keymap.set("i", "jk", "<ESC>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Move text up and down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>")

-- Stay in indent mode
vim.keymap.set("n", "J", "mzJ`z") -- Entfernt das CR aus der unteren Zeile
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Schnelles auf abbwert Scrollen
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Schnelles auf abbwert Scrollen
vim.keymap.set("n", "n", "nzzzv") -- Springe zwischen Gesuchtem auf und ab
vim.keymap.set("n", "N", "Nzzzv") -- Springe zwischen Gesuchtem auf und ab

-- keep the kopied word
vim.keymap.set("x", "<leader>p", "\"_dP") -- Paset

vim.keymap.set("n", "<leader>y", "\"+y") -- Copy into Clipborad
vim.keymap.set("v", "<leader>y", "\"+y") -- Copy im Blockmode into Clipborad
vim.keymap.set("n", "<leader>Y", "\"+Y") -- Copy into Clipborad

vim.keymap.set("i", "<C-c>", "<ESC>")
-- Add a new line without insert mode
vim.keymap.set("n", "<A-o>", "o<ESC><ESC>")
vim.keymap.set("n", "<A-O>", "O<ESC><ESC>")
-- Copy the hole line where the curser is
vim.keymap.set("n", "<A-p>", "Vyp<ESC>")
vim.keymap.set("n", "Q", "<nop>")

-- Move text up and down
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("v", "p", '"_dP')

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv")
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv")

-- LazyGit --
vim.keymap.set("n", "<leader>lg", ":LazyGit<CR>")

-- Nvim Terminal remapping --
vim.keymap.set("n", "<leader>t", "terminal<ESC>")
vim.keymap.set("n", "<leader>ts", ":abov terminal<ESC>")
vim.keymap.set("n", "<leader>tc", "")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Nvim Buffer Mapping
vim.keymap.set("n", "<leader>bn", ":bn<CR>") -- Next Buffer
vim.keymap.set("n", "<leader>bp", ":bp<CR>") -- Previous Buffer
vim.keymap.set("n", "<leader>bf", ":bf<CR>") -- First Buffer
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>") -- Delete current Buffe
