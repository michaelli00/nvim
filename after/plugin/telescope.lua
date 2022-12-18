local telescope = require('telescope')
local actions = require "telescope.actions"

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
