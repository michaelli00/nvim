-- Remove trailing whitespace when saving file
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

-- Remove line numbers in terminal mode
vim.cmd[[autocmd TermOpen * setlocal nonumber norelativenumber]]
