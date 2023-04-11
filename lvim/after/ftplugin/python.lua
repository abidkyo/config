local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "black", args = { "--line-length", "120" }, filetypes = { "python" } } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--max-line-length", "120" }, filetypes = { "python" } } }
