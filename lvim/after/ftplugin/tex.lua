-- this formatter and linter doesn't work really good.
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup { { command = "latexindent", filetypes = { "tex" } } }

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup { { command = "chktex", filetypes = { "tex" } } }

lvim.builtin.which_key.mappings["m"] = { "<cmd>make<CR>", "Make" }

-- autocmd to remove trailing whitespace on save
vim.cmd "autocmd BufWritePre * :%s/\\s\\+$//e"
