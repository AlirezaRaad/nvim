return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'lepture/vim-jinja', -- Jinja syntax
      'othree/html5.vim', -- HTML5 syntax support
    },
    config = function()
      vim.lsp.set_log_level 'debug'

      vim.filetype.add {
        extension = {
          jinja = 'htmldjango',
          jinja2 = 'htmldjango',
          j2 = 'htmldjango',
          py = 'python',
        },
      }

      -- Use htmldjango syntax highlighting for jinja.html, but keep filetype unchanged
      vim.api.nvim_create_autocmd('FileType', {
        pattern = 'jinja.html',
        callback = function()
          vim.cmd 'syntax include @htmldjango syntax/htmldjango.vim'
          vim.cmd 'syntax region htmldjangoCode start=+^{%+ end=+%}+ contains=@htmldjango'
          vim.cmd 'setlocal syntax=htmldjango'
        end,
      })

      local servers = {
        jinja_lsp = {
          filetypes = { 'htmldjango', 'rust', 'python', 'jinja.html' },
        },
      }
    end,
  },
}
