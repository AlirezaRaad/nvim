return {
  'navarasu/onedark.nvim',
  priority = 1000,
  config = function()
    require('onedark').setup {
      style = 'deep',
      transparent = true, -- Set this to true
      term_colors = true,
    }
    vim.cmd.colorscheme 'onedark'
  end,
}
