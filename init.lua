-- main settings

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- hotkeys

vim.keymap.set('n', '<leader>w', ':w<CR>') --save file

-- lazyvim

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable',
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

--plugins

require('lazy').setup({
	--file manager
	{'nvim-tree/nvim-tree.lua'},
	
	--autofill
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},

	--language server protocol
	{'neovim/nvim-lspconfig'},
})

--lsp config
local lspconfig = require('lspconfig')

-- Javascript/TypeScript
lspconfig.ts_ls.setup({
    cmd = {'typescript-language-server', '--stdio'},
    settings = {
        tsserver = {
            disableSuggestions = true,
        },
    },

    root_dir = lspconfig.util.root_pattern('package.json'),
})
