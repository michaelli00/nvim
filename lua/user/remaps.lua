---- Basic remapping ----
-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- Tab swap
vim.keymap.set("n", "<leader><Tab>", "<C-^>")

-- Yank rest of the line
vim.keymap.set("n", "Y", "y$")

-- 'space space' exits out of insert mode
vim.keymap.set("i", "<leader><SPACE>", "<ESC>")

-- Stay in indent mode when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pasting in visual mode doesn't override copied text
vim.keymap.set("v", "p", '"_dP')

-- tabs
vim.keymap.set("n", "<leader>tt", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tl", ":tabnext<CR>")
vim.keymap.set("n", "<leader>th", ":tabprevious<CR>")
