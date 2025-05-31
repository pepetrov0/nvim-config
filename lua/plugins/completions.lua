return {
  {
    "hrsh7th/nvim-cmp",
    event = "LspAttach",
    dependencies = {
      'onsails/lspkind-nvim',
      'hrsh7th/cmp-nvim-lsp',
      'neovim/nvim-lspconfig',
    },
    config = function()
      local cmp = require("cmp")
      local lspkind = require('lspkind')

      cmp.setup({
        formatting = {
          format = lspkind.cmp_format({
            mode = 'symbol_text'
          })
        },
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<Esc>'] = cmp.mapping.abort(),
          ['<PageUp>'] = cmp.mapping.scroll_docs(-5),
          ['<PageDown>'] = cmp.mapping.scroll_docs(5),
          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources(
          { { name = 'nvim_lsp' } },
          { { name = "buffer" } }
        )
      })
    end
  },
}
