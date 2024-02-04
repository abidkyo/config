-- tmux navigator

return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
  },
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Left Pane" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>" , desc = "Under Pane"},
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>" , desc = "Above Pane"},
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>" , desc = "Right Pane"},
  },
}
