-- formatter

return {
  "stevearc/conform.nvim",
  dependencies = "williamboman/mason.nvim", -- neeeded to find formatter binary
  cmd = "ConformInfo",
  keys = {
    { "<leader>lc", "<cmd>ConformInfo<cr>", desc = "ConformInfo" },
    {
      "<leader>lf",
      function()
        require("conform").format({ lsp_fallback = true, async = false, timeout_ms = 1000 })
      end,
      mode = { "n", "v" },
      desc = "Format File or Range",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      bash = { "shfmt" },
      sh = { "shfmt" },
    },
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
    },
  },
}
