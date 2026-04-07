-- list of options
local listofOptions = { 
	number = true,
	relativenumber = true,
	numberwidth = 4,
	hlsearch = false,
	incsearch = true,
	ignorecase = true,
	smartcase = true,
	wrap = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	smartindent = true,
	scrolloff = 8,
	sidescrolloff = 8,
	backup = false,
	writebackup = false,
	swapfile = false,
	termguicolors = true,
	syntax = on,
}

-- iterate throug any given option
-- and it's value and set the value
local function setOption()

  for key, value in pairs(listofOptions) do
     vim.opt[key] = value
  end

end

-- call function (obviously)
setOption()
