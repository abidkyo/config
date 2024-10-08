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
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    event = { "VeryLazy" },
  },
}
