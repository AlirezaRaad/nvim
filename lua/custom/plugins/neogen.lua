return {
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
    config = function()
      local ls = require 'luasnip'
      require('luasnip.loaders.from_vscode').lazy_load()
      ls.filetype_extend('htmldjango', { 'html' })
      ls.filetype_extend('htmx', { 'html' })
      ls.filetype_extend('django', { 'html' })
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    dependencies = { 'saadparwaiz1/cmp_luasnip' },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'

      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        sources = cmp.config.sources {
          { name = 'luasnip' }, -- THIS makes friendly-snippets available in autocomplete
          { name = 'nvim_lsp' },
          { name = 'buffer' },
          { name = 'path' },
        },
      }
    end,
  },
}
