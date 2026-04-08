local listOfPlugins = {
    'treesitter',
    'mason',
    'lua_ls',
    'mini',
}

local function setPlugins()
    local plugPath = 'common.plugins.'

    for _, v in ipairs(listOfPlugins) do
        require(plugPath .. v)
    end

end

setPlugins()
-- load plugins

