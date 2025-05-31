return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "<leader>ft",
      function()
        require("todo-comments.fzf").todo()
      end,
      desc = "TODOs"
    }
  }
}
