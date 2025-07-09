local neo_tree = {
    'nvim-neo-tree/neo-tree.nvim',
    dependencies = {
        'MunifTanjim/nui.nvim', 
        'nvim-lua/plenary.nvim', 
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        require('neo-tree').setup({
            filesystem = {
                filtered_items = {visible = true},
            }
        })
        vim.keymap.set('n', '<leader>E', '<cmd>Neotree toggle<cr>')

        vim.api.nvim_create_autocmd('VimEnter', {
            callback = function()
                if vim.fn.argc() == 0 then
                    vim.cmd('Neotree toggle')
                end
            end,
        })
    end
}

return neo_tree
