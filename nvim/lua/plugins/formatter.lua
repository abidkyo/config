-- formatter

return {
  "stevearc/conform.nvim",
  config = function()
    local conform = require("conform")

    conform.setup({
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
    })

    vim.keymap.set("n", "<leader>lc", "<cmd>ConformInfo<cr>", { desc = "Conform" })

    vim.keymap.set({ "n", "v" }, "<leader>lf", function()
      conform.format({
        lsp_fallback = false,
        async = true,
        timeout_ms = 500,
      })
    end, { desc = "Format File or Range" })
  end,
}
