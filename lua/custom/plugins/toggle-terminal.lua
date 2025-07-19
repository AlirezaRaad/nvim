return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup {
        -- Add your config here if you want, e.g. size, direction, etc.
        size = 20,
        open_mapping = [[<A-i>]], -- Alt + t to toggle terminal
        shading_factor = 2,
        direction = 'float',
        float_opts = {
          border = 'curved',
        },
      }
      -- Also map manually to be safe
      vim.api.nvim_set_keymap('n', '<A-i>', '<cmd>ToggleTerm<CR>', { noremap = true, silent = true })
    end,
  },
}
