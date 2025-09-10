return {
  {
    'kevinhwang91/nvim-ufo',
    dependencies = { 'kevinhwang91/promise-async' },
    config = function()
      -- Setup ufo with auto-fold disabled
      require('ufo').setup {
        open_fold_hl_timeout = 0,
        close_fold_kinds = {}, -- prevent folding everything
      }

      -- Use treesitter-based folding
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldlevel = 99 -- open all folds by default
      vim.opt.foldenable = true

      -- Fold keymaps
      vim.keymap.set('n', 'fq', function()
        require('ufo').openAllFolds()
      end, { desc = 'Open all folds with ufo' })

      vim.keymap.set('n', 'fa', function()
        require('ufo').closeAllFolds()
      end, { desc = 'Close all folds with ufo' })

      vim.keymap.set('n', 'ff', 'zc', { desc = 'Close fold under cursor' })
      vim.keymap.set('n', 'fo', 'zo', { desc = 'Open fold under cursor' })
    end,
  },
}
