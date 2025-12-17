-- flutter

return {
  'nvim-flutter/flutter-tools.nvim',
  ft = { "dart" },
  keys = {
    { "<leader>ft", "<cmd>Telescope flutter commands<cr>", desc = "FlutterCommands" },
  },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = true,
}
