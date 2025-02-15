-- formatter

return {
  "stevearc/conform.nvim",
  dependencies = "williamboman/mason.nvim", -- neeeded to find formatter binary
  cmd = "ConformInfo",
  keys = {
    { "<leader>ic", "<cmd>ConformInfo<cr>", desc = "ConformInfo" },
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
      -- python = { "ruff_format", "ruff_organize_imports" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      bash = { "shfmt" },
      sh = { "shfmt" },
      bib = { "bibtex-tidy" },
      tex = { "latexindent" },
      cmake = { "cmake_format" },
      json = { "jq" },
    },
    formatters = {
      shfmt = {
        prepend_args = { "-i", "2" },
      },
      cmake_format = {
        prepend_args = { "-c", "~/.config/cmake-format/cmake-format.py", "--" },
      },
    },
  },
}
