-- formatting takes a lot of time
-- idk which one of these actually change the config
lvim.format_on_save = false
-- require("lvim.core.autocmds").toggle_format_on_save()

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup { { command = "prettier", filetypes = { "markdown" } } }

-- vim.cmd [[setlocal nospell]]
-- vim.cmd [[setlocal conceallevel=2]]
