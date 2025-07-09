local plugins = require('lazy').setup({
	--file manager
	{'nvim-tree/nvim-tree.lua'},
	
	--autofill
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},

	--language server protocol
	{'neovim/nvim-lspconfig'},
    --theme
    require('plugins.rose_pine'),
    --lualine
    require('plugins.lualine'),
    --syntax highlight
    require('plugins.treesitter'),
    --neo tree
    require('plugins.neo_tree'),

})

return plugins
