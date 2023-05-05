local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "shfmt", args = {"-i", "2"}, filetypes = { "sh" } } }

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "shellcheck", filetypes = { "sh" } } }
