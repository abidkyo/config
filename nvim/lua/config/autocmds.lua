-- vim autocmds

-- c file: tab == 4 spaces
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
  end,
})

-- cmeke file: tab == 2 spaces
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "cmake" },
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
  end,
})

-- q keymap to close file
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "PlenaryTestPopup",
    "checkhealth",
    "help",
    "lspinfo",
    "man",
    "neo-tree",
    "netrw",
    "notify",
    "qf",
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
  end,
})

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank()
  end,
})
