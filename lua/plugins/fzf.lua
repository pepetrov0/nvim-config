return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opt = {},
  keys = {
    {
      "<leader>f.",
      mode = "n",
      function()
        require('fzf-lua').builtin()
      end,
      desc = "Builtins"
    },
    {
      "<leader>ff",
      mode = "n",
      function()
        require('fzf-lua').files()
      end,
      desc = "Files"
    },
    {
      "<leader>fb",
      mode = "n",
      function()
        require('fzf-lua').buffers()
      end,
      desc = "Buffers"
    },
    {
      "<leader>fg",
      mode = "n",
      function()
        require('fzf-lua').grep_visual()
      end,
      desc = "Grep"
    }
  }
}
