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
  root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
  cmd = { "OmniSharp", "--languageserver" },
  handlers = {
      ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
          border = "rounded"
      }),
      ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
          border = "rounded"
      }),
      ["textDocument/publishDiagnostics"] = vim.lsp.with(
      vim.lsp.diagnostic.on_publish_diagnostics, {
          virtual_text = {
              spacing = 2,
              prefix = '●', -- Customize the prefix for diagnostics
          },
          signs = true,
          update_in_insert = false,
      }
      ),
  },
  settings = {
      csharp = {
          formatting = { enabled = true },
      },
  },
})

vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float(nil, {
      focusable = false,
      border = "rounded",
      source = "always",  -- Show the source of the diagnostic
      prefix = "● ",  -- Custom prefix for each diagnostic line
    })
  end
})
