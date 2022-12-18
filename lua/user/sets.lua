vim.g.mapleader = " "

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.colorcolumn = "100"

vim.opt.completeopt = 'menuone,noselect'

vim.opt.splitbelow = false
vim.opt.splitright = true

vim.opt.autochdir = true
