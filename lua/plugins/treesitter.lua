local treesitter = {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()
            require('nvim-treesitter.configs').setup({
                ensure_installed = {'javascript', 'typescript', 'lua'},
                highlight = {enable = true},
                indent = {enable = true},
            })
        end
}

return treesitter
