vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Current line color is cyan, other lines are yellow
vim.cmd[[highlight LineNr guifg=yellow]]
vim.cmd[[highlight CursorLineNr guifg=cyan]]

-- Allow transparent background
vim.cmd[[highlight Normal guibg=NONE ctermbg=NONE]]
