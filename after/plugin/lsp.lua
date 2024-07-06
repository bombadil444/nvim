require('lsp-zero')

local lspconfig = require('lspconfig')

lspconfig.pylsp.setup({
    on_attach = custom_attach,
    settings = {
        pylsp = {
            plugins = {
                -- formatter options
                black = { enabled = true },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- linter options
                pylint = { enabled = false, executable = "pylint" },
                pyflakes = { enabled = false },
                pycodestyle = { enabled = false },
                -- type checker
                pylsp_mypy = { enabled = false },
                -- auto-completion options
                jedi_completion = { fuzzy = true },
                -- import sorting
                pyls_isort = { enabled = false },
            },
        },
    },
    flags = {
        debounce_text_changes = 200,
    },
    capabilities = capabilities,
})

lspconfig.omnisharp.setup({
  on_attach = require('lspconfig').omnisharp.on_attach,
  capabilities = vim.lsp.protocol.make_client_capabilities(),
  cmd = { "OmniSharp", "--languageserver" },
  settings = {
    csharp = {
      formatting = { enabled = true },
    },
  },
})
