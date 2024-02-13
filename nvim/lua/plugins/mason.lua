-- mason

return {
  "williamboman/mason.nvim",
  build = ":MasonUpdate",
  cmd = "Mason",
  keys = {
    { "<leader>lm", "<cmd>Mason<cr>", desc = "Mason" },
  },
  opts = {
    ui = {
      icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" },
    },
  },
}
