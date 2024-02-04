-- mason

return {
  "williamboman/mason.nvim",
  config = function()
    require('mason').setup()
    vim.keymap.set('n', '<leader>lM', "<cmd>Mason<cr>", {desc = "Find Files"})
  end
}



