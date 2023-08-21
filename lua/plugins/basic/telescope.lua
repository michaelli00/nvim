return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      telescope.setup {
        defaults = {
          mappings = {
            i = {
              ["<C-j>"] = actions.move_selection_next,
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-c>"] = actions.close,
              ["<CR>"] = actions.select_default,
              ["<C-x>"] = actions.select_horizontal,
              ["<C-v>"] = actions.select_vertical
            }
          }
        }
      }
    end,
    keys = {
      { "<leader>fo", "<cmd>Telescope oldfiles<cr>" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
      { "<leader>fd", "<cmd>Telescope diagnostics<cr>" },
      { "<leader>fs", "<cmd>Telescope current_buffer_fuzzy_find<cr>" },
    },
  }
}
