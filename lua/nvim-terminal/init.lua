-- Litlte plugin for centralizing the terminal


local function createWin()

	local buf = vim.api.nvim_create_buf(false,false)

	if buf == 0 then
		vim.print("Couldn't create new buffer!")
		return
	end

	local win = vim.api.nvim_open_win(buf, true,
									{
										relative='win',
										width=60,
										height=20,
										bufpos={50,30},
										border='solid'
									})

	vim.keymap.set("n", "<leader>tg", function ()
		if win.relative ~= '' then
			vim.api.nvim_win_close(win, true)
		end
	end)

	return win
end

local function main()

	vim.keymap.set("n", "<leader>t", function ()
		win = createWin()
	end)

end


main()
