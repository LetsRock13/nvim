-- set leader key
vim.g.mapleader = " "
local keymap = vim.keymap

function setRemap(mode, mapping, action)
    vim.keymap.set(mode, mapping, action)
end

-- Set Explore as remap
setRemap("n", "<leader>pv", vim.cmd.Explore)

-- Set custom escape for workflow
setRemap("i", "jk" , "<ESC>")
