-- harpoon

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>bm",
      function()
        local harpoon = require("harpoon")
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = "Harpoon Menu",
    },
    {
      "<leader>ba",
      function()
        require("harpoon"):list():append()
      end,
      desc = "Harpoon Add File",
    },
    {
      "<M-h>",
      function()
        require("harpoon"):list():prev()
      end,
      desc = "Harpoon Prev File",
    },
    {
      "<M-l>",
      function()
        require("harpoon"):list():next()
      end,
      desc = "Harpoon Next File",
    },
  },
  config = function()
    require("harpoon"):setup({})
  end,
}
