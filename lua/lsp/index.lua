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

return lspconfig
