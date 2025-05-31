return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      sections = {
        { section = "header" },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 2 },
        { section = "startup" },
      }
    },
    indent = {},
    input = {}
  },
}
