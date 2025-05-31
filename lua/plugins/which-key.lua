return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    defaults = {
      { "<leader>f", group = "Search" },
      { "<leader>c", group = "Code" },
      { "<leader>g", group = "Go to" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.add(opts.defaults)
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show()
      end,
      desc = "Keymaps (which-key)"
    },
  },
}
