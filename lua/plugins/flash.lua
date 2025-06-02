return {
  "folke/flash.nvim",
  opts = {},
  keys = {
    { "s", mode = { "n" }, function() require("flash").jump() end, desc = "Flash" },
  },
}
