-- treesitter

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-context",
    keys = {
      { "<leader>tt", "<cmd>TSContext toggle<cr>", desc = "TS Context Toggle" },
    },
  },
  branch = 'main',
  version = false,
  build = ":TSUpdate",
  event = { "VeryLazy" },
  opts = {
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
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
      "markdown",
      "python",
      "toml",
      "vim",
      "vimdoc",
      "yaml",
    },
  },
}
