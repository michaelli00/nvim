vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight on yank",
  callback = function(event)
    vim.highlight.on_yank({higroup = "Visual", timeout = 300})
  end
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  desc = "Remove trailing whitespace on save",
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
