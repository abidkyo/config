-- harpoon

return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()

    vim.keymap.set("n", "<leader>bm", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon Menu" })

    vim.keymap.set("n", "<leader>ba", function()
      harpoon:list():append()
    end, { desc = "Harpoon Add File" })

    vim.keymap.set("n", "<M-h>", function()
      harpoon:list():prev()
    end, { desc = "Harpoon Prev file" })

    vim.keymap.set("n", "<M-l>", function()
      harpoon:list():next()
    end, { desc = "Harpoon Next file" })
  end,
}
