local colorizer = {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup({
            '*',
            css = { rgb_fn = true },
            html = { names = true },
            user_default_options = {
                RGB = true,
                RRGGBB = true,
                RRGGBBAA = true,
                names = false,
                mode = 'background',
                virtualText = '■',
            }
        })
    end
}

return colorizer
