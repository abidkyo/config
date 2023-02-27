-- this formatter and linter doesn't work really good.
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup { { command = "latexindent", filetypes = { "tex" } } }

-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup { { command = "chktex", filetypes = { "tex" } } }

-- local opts = {}
-- require("lvim.lsp.manager").setup("ltex", opts)

lvim.builtin.which_key.mappings["m"] = { "<cmd>make<CR>", "Make" }

-- autocmd to remove trailing whitespace on save
vim.cmd "autocmd BufWritePre * :%s/\\s\\+$//e"
