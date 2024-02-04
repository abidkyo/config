-- keymaps

vim.keymap.set("n", "<leader>h", "<cmd>noh<cr>", { desc = "Clear Higlighting" })
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })

vim.keymap.set("n", "<leader>lw", "<cmd>%s/\\s\\+$//e<cr>", { desc = "Trim Whitespace" })
