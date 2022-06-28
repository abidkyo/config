-- no need to setup formatter since clangd has built-in clang-format
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup { { command = "clang_format", filetypes = { "c" } } }

-- default to 4 tab spaces
vim.cmd "setlocal tabstop=4 shiftwidth=4"

-- set switch source header keybinding
-- lvim.lsp.on_attach_callback = function(bufnr)
--   local opts = { noremap = true, silent = true }
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>lh", "<Cmd>ClangdSwitchSourceHeader<CR>", opts)
-- end
