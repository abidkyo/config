-- git integration
-- gitsigns
-- fugitive

return {
  {
    "lewis6991/gitsigns.nvim",
    event = { "VeryLazy" },
    keys = {
      { "<leader>gd", "<cmd>Gitsigns diffthis<cr>", desc = "Git Diff" },
      { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Git Preview Hunk" },
      { "<leader>gD", "<cmd>Gitsigns toggle_deleted<cr>", desc = "Git Toggle Deleted" },
      { "<leader>gB", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Git Toggle Line Blame" },
    },
    config = function()
      require("gitsigns").setup({
        current_line_blame_formatter = "<abbrev_sha> <author> <author_time:%R>",
        on_attach = function (bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Actions
          map('n', '<leader>gsh', gitsigns.stage_hunk)
          map('n', '<leader>grh', gitsigns.reset_hunk)

          map('x', '<leader>gsh', function()
            gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })
          end)
        end
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    event = { "VeryLazy" },
  },
}
