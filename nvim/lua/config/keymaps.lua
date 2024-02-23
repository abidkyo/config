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
vim.keymap.set("n", "<leader>c", "<cmd>bdelete<cr>", { desc = "Close Buffer" })

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

--diagnostic
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist)
vim.keymap.set("n", "<leader>dd", "<cmd>Telescope diagnostics<cr>")

-- lsp keymaps on attach
vim.api.nvim_create_autocmd({ "LspAttach" }, {
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>", opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>", opts)
    vim.keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<cr>", opts)
    vim.keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<space>la", vim.lsp.buf.code_action, opts)
    vim.keymap.set({ "n", "i" }, "<C-h>", vim.lsp.buf.signature_help, opts)
  end,
})
