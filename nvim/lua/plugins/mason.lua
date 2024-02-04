-- mason

return {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup({
      ui = { icons = { package_installed = "✓", package_pending = "➜", package_uninstalled = "✗" } },
    })
    vim.keymap.set("n", "<leader>lm", "<cmd>Mason<cr>", { desc = "Mason" })
  end,
}
