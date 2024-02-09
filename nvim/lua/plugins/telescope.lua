-- telescope

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Git Files" },
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>st", "<cmd>Telescope live_grep<cr>", desc = "Search Text" },
    { "<leader>vh", "<cmd>Telescope help_tags<cr>", desc = "Vim Help" },
    { "<leader>vk", "<cmd>Telescope keymaps<cr>", desc = "Vim Keymaps" },
    { "<leader>vr", "<cmd>Telescope registers<cr>", desc = "Vim Registers" },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
          ["<C-n>"] = "cycle_history_next",
          ["<C-p>"] = "cycle_history_prev",
        },
        n = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
          ["q"] = "close",
        },
      },
    },
  },
}
