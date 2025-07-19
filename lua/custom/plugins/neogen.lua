return {
  'danymat/neogen',
  version = '*',
  config = function()
    require('neogen').setup {
      enabled = true,
      languages = {
        python = {
          template = {
            annotation_convention = 'numpydoc',
          },
        },
      },
    }

    -- Key mapping to generate docstrings
    vim.keymap.set('n', '<leader>dd', ':Neogen<CR>', { desc = 'Generate Docstring (Neogen)' })
  end,
}
