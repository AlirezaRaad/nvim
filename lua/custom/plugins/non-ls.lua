return {
  'nvimtools/none-ls.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'jay-babu/mason-null-ls.nvim',
      config = function()
        require('mason-null-ls').setup {
          ensure_installed = {
            'black',
            'isort',
            'mypy',
            'stylua',
            'prettier',
          },
          automatic_installation = true,
        }
      end,
    },
  },
  config = function()
    local null_ls = require 'null-ls'

    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    -- Auto-command group for formatting on save
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

    null_ls.setup {
      sources = {
        -- Lua
        formatting.stylua,
        -- Python
        formatting.black, --
        diagnostics.mypy,
        formatting.isort, --
        -- HTML
        formatting.prettier,
        diagnostics.tidy,
      },
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format {
                bufnr = bufnr,
                filter = function(c)
                  return c.name == 'null-ls'
                end,
              }
            end,
          })
        end
      end,
    }

    -- Keybinding: Format file manually
    vim.keymap.set('n', '<leader>gf', function()
      vim.lsp.buf.format {
        filter = function(client)
          return client.name == 'null-ls'
        end,
      }
    end, { desc = 'Format file with null-ls' })
  end,
}
