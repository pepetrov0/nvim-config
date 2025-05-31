return {
  {
    "mason-org/mason.nvim",
    opts = {},
    keys = {
      {
        "<leader>m",
        function()
          require("mason.ui").open()
        end,
        desc = "Mason",
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    event = "BufReadPre",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      handlers = {
        function(server_name)
          local capabilities = require("cmp_nvim_lsp").default_capabilities()
          require("lspconfig")[server_name].setup({
            capabilities = capabilities,
          })
        end
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "K",
        mode = "n",
        function()
          vim.lsp.buf.hover()
        end,
        desc = "Show documentation"
      },
      {
        "D",
        mode = "n",
        function()
          vim.diagnostic.open_float()
        end,
        desc = "Show diagnostics"
      },
      {
        "gd",
        mode = "n",
        function()
          require("fzf-lua").lsp_definitions()
        end,
        desc = "Go to definition"
      },
      {
        "gr",
        mode = "n",
        function()
          require("fzf-lua").lsp_references()
        end,
        desc = "Go to reference"
      },
      {
        "<leader>ca",
        mode = "n",
        function()
          require("fzf-lua").lsp_code_actions()
        end,
        desc = "Code actions"
      },
      {
        "<leader>cf",
        mode = "n",
        function()
          vim.lsp.buf.format()
        end,
        desc = "Format"
      },
      {
        "<leader>cs",
        mode = "n",
        function()
          require("fzf-lua").lsp_document_symbols()
        end,
        desc = "Symbols"
      },
      {
        "<leader>cd",
        mode = "n",
        function()
          require("fzf-lua").diagnostics_workspace()
        end,
        desc = "Diagnostics"
      },
      {
        "<leader>cr",
        mode = "n",
        function()
          vim.lsp.buf.rename()
        end,
        desc = "Rename"
      }
    }
  }
}
