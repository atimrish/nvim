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

--HTML
lspconfig.html.setup({
    filetypes = {'html', 'javascriptreact', 'typescriptreact'},
    init_options = {
        provideFormatter = true
    }
})

--CSS
lspconfig.cssls.setup({
    settings = {
        css = {
            validate = true
        },
        scss = {
            validate = true
        },
        less = {
            validate = true
        }
    }
})

--EsLint
lspconfig.eslint.setup({
    settings = {
        packageManager = 'npm'
    },
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            command = 'EslintFixAll',
        })
    end
})

return lspconfig
