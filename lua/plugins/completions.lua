return {
  {
    "hrsh7th/cmp-nvim-lsp",
    opts = {}
  },
  {
    "hrsh7th/nvim-cmp",
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = {
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<S-Tab>'] = cmp.mapping.abort(),
          ['<PageUp>'] = cmp.mapping.scroll_docs(-5),
          ['<PageDown>'] = cmp.mapping.scroll_docs(5),
          ['<Up>'] = cmp.mapping.select_prev_item(),
          ['<Down>'] = cmp.mapping.select_next_item(),
          ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources(
          { { name = 'nvim_lsp' } },
          { { name = "buffer" } }
        )
      })
    end
  }
}
