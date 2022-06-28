-- autocmd to remove trailing whitespace on save
vim.cmd "autocmd BufWritePre * :%s/\\s\\+$//e"
