-- telescope

return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
  },
  cmd = "Telescope",
  keys = {
    { "<C-p>", "<cmd>Telescope git_files<cr>i", desc = "Git Files" }, -- start in insert mode
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    { "<leader>st", "<cmd>Telescope live_grep<cr>i", desc = "Search Text" }, -- start in insert mode
    { "<leader>vh", "<cmd>Telescope help_tags<cr>i", desc = "Vim Help" }, -- start in insert mode
    { "<leader>vk", "<cmd>Telescope keymaps<cr>", desc = "Vim Keymaps" },
    { "<leader>vr", "<cmd>Telescope registers<cr>", desc = "Vim Registers" },

    { "<leader>gs", "<cmd>Telescope git_status<cr>", desc = "Git Status" },
    { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Git Commits" },
    { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git Branches" },
    { "<leader>gf", "<cmd>Telescope git_bcommits<cr>", desc = "Git Buffer Commits" },
  },
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        initial_mode = "normal",
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
    })

    telescope.load_extension("fzf")
  end,
}
