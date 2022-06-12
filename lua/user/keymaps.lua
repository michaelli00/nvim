local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

---- Normal ----
-- Window navigation
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

-- Resize splits
keymap("n", "<C-k>", ":resize +2<CR>", opts)
keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize -2<CR>", opts)

-- Tab swap
keymap("n", "<leader><Tab>", "<C-^>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>rg", "<cmd>Telescope live_grep<cr>", opts)

-- Nvim Tree
keymap("n", "<leader>t", ":NvimTreeToggle<cr>", opts)

-- Yank rest of the line
keymap("n", "Y", "y$", opts)


---- Insert Mode ----
-- 'space space' exits out of insert mode
keymap("i", "<leader><SPACE>", "<ESC>", opts)


---- Visual Mode ----
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m '>1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Pasting in visual mode doesn't override copied text
keymap("v", "p", '"_dP', opts)
