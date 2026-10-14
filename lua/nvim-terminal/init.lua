-- Litlte plugin for centering the terminal

local win = 0
local buf = 0

local function createFloatTerm()

	buf = vim.api.nvim_create_buf(false,false)

	if buf == 0 then
		vim.print("Couldn't create new buffer!")
		return
	end

	win = vim.api.nvim_open_win(
		buf,
		true,
		{
			relative='win',
			width=80,
			height=20,
			bufpos={10,10},
			border='rounded'
		})

	vim.cmd(":terminal")

end

local function hideFloatTerm()
	-- Hide the window do not close it
	vim.cmd(":bufhidden buf")
end

local function main()

	vim.keymap.set("n", "<A-f>", function ()
			createFloatTerm()
	end)

	vim.keymap.set("n", "<A-q>", function ()
			hideFloatTerm()
	end)

	vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")

end

main()
