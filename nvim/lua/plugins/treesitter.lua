-- treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      { "<leader>tt", "<cmd>TSContext toggle<cr>", desc = "TS Context Toggle" },
    },
    config = function()
      require("treesitter-context").setup({ enable = false })
    end,
  },
  build = ":TSUpdate",
  event = { "VeryLazy" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "bibtex",
        "c",
        "cpp",
        "dart",
        "html",
        "json",
        "latex",
        "lua",
        "python",
        "vim",
        "vimdoc",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
