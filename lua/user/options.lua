-- :help options
local opt = vim.opt

opt.backup = false                          -- creates a backup file
opt.background = "dark"                     -- sets dark background
opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
-- TODO maybe remove preview
opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
opt.conceallevel = 0                        -- so that `` is visible in markdown files
opt.cursorline = true                       -- highlight the current line
opt.expandtab = true                        -- treat tabs as spaces
opt.fileencoding = "utf-8"                  -- the encoding written to a file
opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
opt.hidden = true                           -- allow swapping buffers without saving
opt.hlsearch = true                         -- highlight all matches on previous search pattern
opt.ignorecase = true                       -- ignore case in search patterns
opt.number = true                           -- set numbered lines
opt.numberwidth = 4                         -- set number column width to 2 {default 4}
opt.pumheight = 10                          -- pop up menu height
opt.relativenumber = true                   -- set relative numbered lines
opt.scrolloff = 8                           -- is one of my fav
opt.sidescrolloff = 8
opt.showtabline = 2                         -- always show tabs
opt.smartcase = true                        -- smart case
opt.smartindent = true                      -- make indenting smarter again
opt.splitbelow = false                      -- force all horizontal splits to go above current window
opt.splitright = true                       -- force all vertical splits to go to the right of current window
opt.swapfile = false                        -- creates a swapfile
opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
opt.shortmess:append "c"
opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
opt.tabstop = 2                             -- insert 2 spaces for a tab
opt.termguicolors = true                    -- set term gui colors (most terminals support this)
opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
opt.undofile = true                         -- enable persistent undo
opt.updatetime = 300                        -- faster completion (4000ms default)
opt.wrap = true                             -- wrap lines

-- Current line color is cyan, other lines are yellow
vim.cmd[[highlight LineNr guifg=yellow]]
vim.cmd[[highlight CursorLineNr guifg=cyan]]

-- Remove all whitespace on save
vim.cmd[[autocmd BufWritePre * :%s/\s\+$//e]]

