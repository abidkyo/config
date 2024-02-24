-- linter
-- nvim-lint

return {
  "mfussenegger/nvim-lint",
  dependencies = "williamboman/mason.nvim", -- neeeded to find linter binary
  event = "BufRead",
  ft = { "py" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "pylint" },
    }

    vim.api.nvim_create_autocmd({ "BufRead", "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
