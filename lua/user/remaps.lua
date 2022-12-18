local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local builtin = require('telescope.builtin')

---- Basic remapping ----
-- Window navigation
vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

-- Resize splits
vim.keymap.set("n", "<C-k>", ":resize +2<CR>")
vim.keymap.set("n", "<C-j>", ":resize -2<CR>")
vim.keymap.set("n", "<C-l>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<C-h>", ":vertical resize -2<CR>")

-- Tab swap
vim.keymap.set("n", "<leader><Tab>", "<C-^>")

-- Yank rest of the line
vim.keymap.set("n", "Y", "y$")

-- 'space space' exits out of insert mode
vim.keymap.set("i", "<leader><SPACE>", "<ESC>", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pasting in visual mode doesn't override copied text
vim.keymap.set("v", "p", '"_dP')



---- Plugins ----
-- Floatterm
vim.g.floaterm_keymap_new    = '<F7>'
vim.g.floaterm_keymap_prev   = '<F8>'
vim.g.floaterm_keymap_next   = '<F9>'
vim.g.floaterm_keymap_toggle = '<F12>'

-- Harpoon
vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>F', ui.toggle_quick_menu)

-- Telescope
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>b', require('telescope.builtin').buffers, { desc = '[b] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer]' })
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})

-- Tree
vim.keymap.set("n", "<leader>t", vim.cmd.NERDTreeFind)

-- Undo Tree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- LSP mappings are written in /after/plugin/lsp.lua
