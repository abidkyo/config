-- keymaps

-- netrw
vim.keymap.set("n", "<leader>e", "<cmd>Explore<cr>", { desc = "Explorer" })

-- clear highlight
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear Higlighting" })

-- save and quit
vim.keymap.set("n", "<leader>w", "<cmd>write<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", "<cmd>quit<cr>", { desc = "Quit" })

-- buffer
vim.keymap.set("n", "<leader>br", "<cmd>edit!<cr>", { desc = "Reload Buffer" })
vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "GoTo Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "GoTo Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "GoTo Upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "GoTo Right Window" })
vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- trim whitespace
vim.keymap.set("n", "<leader>lw", "<cmd>%s/\\s\\+$//e<cr>", { desc = "Trim Whitespace" })

-- easy esc
vim.keymap.set("i", "jk", "<esc>", { desc = "Escape" })
vim.keymap.set("i", "kj", "<esc>", { desc = "Escape" })

-- center when navigating
vim.keymap.set("n", "n", "nzzzv", { desc = "Search and Center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search and Center" })
vim.keymap.set("n", "<C-u", "<C-u>zz", { desc = "Scroll Up and Center" })
vim.keymap.set("n", "<C-d", "<C-d>zz", { desc = "Scroll Down and Center" })

-- stay in visual while indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
