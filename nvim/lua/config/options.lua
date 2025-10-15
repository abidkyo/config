-- vim options

-- leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- misc
vim.opt.autowrite = true
vim.opt.clipboard = "unnamedplus"
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.confirm = true
vim.opt.spelllang = { "en", "de" }
vim.opt.swapfile = false
vim.opt.timeoutlen = 500
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.wildmode = "longest:full,full"

-- indent
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftround = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.tabstop = 2

-- text rendering
vim.opt.linebreak = true
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.splitkeep = "screen"
vim.opt.wrap = true

-- ui
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- diagnostic
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
})

local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
