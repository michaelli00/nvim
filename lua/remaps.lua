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
vim.keymap.set("i", "<leader><SPACE>", "<ESC>")

-- Stay in indent mode when indenting
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move text up and down
vim.keymap.set("v", "J", ":m '>1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Pasting in visual mode doesn't override copied text
vim.keymap.set("v", "p", '"_dP')

-- tab management
vim.keymap.set("n", "th", "<cmd>:tabfirst<cr>", {}, "First tab")
vim.keymap.set("n", "tk", "<cmd>:tabnext<cr>", {}, "Next tab")
vim.keymap.set("n", "tj", "<cmd>:tabprev<cr>", {}, "Previous tab")
vim.keymap.set("n", "tl", "<cmd>:tablast<cr>", {}, "Last tab")
vim.keymap.set("n", "tt", "<cmd>:tabedit<cr>", {}, "New tab")
vim.keymap.set("n", "td", "<cmd>:tabclose<cr>", {}, "Close tab")
vim.keymap.set("n", "tn", "<cmd>:tabmove -1<cr>", {}, "Move tab next")
vim.keymap.set("n", "tm", "<cmd>:tabmove +1<cr>", {}, "Move tab previous")
require("which-key").register({
  t = {
    name = "tabs",
  },
})



---- Plugins remappings ----

-- Telescope
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", {}, "Find file")
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", {}, "Grep")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", {}, "Find buffer")
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", {}, "Find mark")
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", {}, "Find references (LSP)")
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>", {}, "Find symbols (LSP)")
vim.keymap.set("n", "<leader>fi", "<cmd>Telescope lsp_implementations<cr>", {}, "Find implementations (LSP)")
vim.keymap.set("n", "<leader>fx", "<cmd>Telescope diagnostics bufnr=0<cr>", {}, "Find errors (LSP)")
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", {}, "Old Files")
require("which-key").register({
  f = {
    name = "find",
  },
}, { prefix = "<leader>" })

-- trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", {}, "Display errors")
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", {}, "Display workspace errors")
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", {}, "Display document errors")
require("which-key").register({
  x = {
    name = "errors",
  },
}, { prefix = "<leader>" })

-- symbols-outline
vim.keymap.set("n", "<leader>o", "<cmd>SymbolsOutline<cr>", {}, "Show symbols")

-- NerdTree
vim.keymap.set("n", "<leader>e", "<cmd>NERDTreeFind<CR>", {}, "Nerd Tree")

-- Vim-Tmux
vim.keymap.set("n", "<c-h>", "<cmd>TmuxNavigateLeft<cr>", {}, "Window left")
vim.keymap.set("n", "<c-l>", "<cmd>TmuxNavigateRight<cr>", {}, "Window right")
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateDown<cr>", {}, "Window down")
vim.keymap.set("n", "<c-j>", "<cmd>TmuxNavigateUp<cr>", {}, "Window up")
