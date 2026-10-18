-- mason

return {
  {
    "mason-org/mason.nvim",
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
    "mason-org/mason-lspconfig.nvim",
    keys = {
      { "<leader>il", "<cmd>checkhealth lsp<cr>", desc = "LspInfo" },
    },
    opts = {
      ensure_installed = {
        "basedpyright",
        "bashls",
        "clangd",
        "ltex",
        "lua_ls",
        "ruff",
        "zls",
      },
    },
  },
}
