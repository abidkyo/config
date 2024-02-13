-- linter
-- nvim-lint

return {
  "mfussenegger/nvim-lint",
  dependencies = "williamboman/mason.nvim", -- neeeded to find formatter binary
  event = "BufRead",
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "pylint" },
      bash = { "shellcheck" },
      sh = { "shellcheck" },
    }

    vim.api.nvim_create_autocmd({ "BufRead", "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
