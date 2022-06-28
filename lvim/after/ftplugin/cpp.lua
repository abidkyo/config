-- no need to setup formatter since clangd has built-in clang-format
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup { { command = "clang_format", filetypes = { "cpp" } } }

-- default to 4 tab spaces
vim.cmd "setlocal tabstop=4 shiftwidth=4"
