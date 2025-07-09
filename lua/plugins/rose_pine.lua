 local rose_pine = {
        'rose-pine/neovim',
        name = 'rose-pine',
        lazy = false,
        priority = 1000,
        config = function()
            require('rose-pine').setup({
                variant = 'moon',
                styles = {
                    bold = true,
                    italic = true,
                },
                disable_background = false,
                disable_float_background = false,
            })
            vim.cmd('colorscheme rose-pine')
        end,
}

return rose_pine 
