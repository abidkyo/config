-- mason

return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    keys = {
      { "<leader>im", "<cmd>Mason<cr>", desc = "Mason" },
    },
    opts = {
      ui = {
        icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    keys = {
      { "<leader>il", "<cmd>LspInfo<cr>", desc = "LspInfo" },
    },
    opts = {
      ensure_installed = {
        "bashls",
        "clangd",
        "ltex",
        "lua_ls",
      },
    },
  },
}
