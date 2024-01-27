local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "black", filetypes = { "python" } } }

-- 88 max line length according to black default
local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "flake8", args = { "--max-line-length=88", "--extend-ignore=E203" }, filetypes = { "python" } } }
