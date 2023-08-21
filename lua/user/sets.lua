vim.g.mapleader = " "
local opt = vim.opt

-- Line number and relative line number
opt.number = true
opt.relativenumber = true

-- Disable swapfile and vim backup
opt.swapfile = false
opt.backup = false

-- Smart searching
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true

-- Smart scrolling
opt.scrolloff = 8

-- Column stuff
opt.signcolumn = "auto"
opt.colorcolumn = "100"

-- Vim window splitting
opt.splitbelow = false
opt.splitright = true

-- Disable vim mouse mode
opt.mouse = ""

-- Vim option menu settings
opt.completeopt = "menuone,noselect"

-- Enable cursorline
opt.cursorline = true

-- Space tabs

opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true

-- Allow persistent undoing even after file is closed
opt.undofile = true
