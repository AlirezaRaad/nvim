return {
  'nvim-treesitter/nvim-treesitter-context',
  event = 'VeryLazy',
  config = function()
    require('treesitter-context').setup {
      enable = true, -- Enable this plugin
      max_lines = 3, -- How many lines the context window can span
      trim_scope = 'outer', -- Hide inner scopes when context is too long
      mode = 'cursor', -- Can be 'cursor' or 'topline'
    }
  end,
}
