vim.g.mapleader = " "

-- disable language provider support (lua and vimscript plugins only)
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python_provider = 0
vim.g.loaded_python3_provider = 0

-- Line number and relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Smart indenting
vim.opt.smartindent = true

-- Disable swapfiles and vim backup
vim.opt.swapfile = false
vim.opt.backup = false

-- Smart searching
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

-- Smart scrolling
vim.opt.scrolloff = 8

-- Column stuff
vim.opt.signcolumn = 'auto'
vim.opt.colorcolumn = '100'

-- Vim window splitting
vim.opt.splitbelow = false
vim.opt.splitright = true

-- Disable vim mouse mode
vim.opt.mouse = ''

-- Vim option menu settings
vim.opt.completeopt = 'menuone,noselect'

-- Enable cursorline
vim.api.nvim_command('set cursorline')

-- 2 space tabs
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- Allow persistent undoing even after file is closed
vim.opt.undofile = true
