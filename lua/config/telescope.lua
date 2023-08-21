require('telescope').setup({
  defaults = {
    path_display = {
      shorten = {
        len = 3, exclude = {1, -1}
      },
      truncate = true
    },
    dynamic_preview_title = true,
    mappings = {
      n = {
    	  ['<C-c>'] = require('telescope.actions').delete_buffer
      },
      i = {
        ['<C-j>'] = require('telescope.actions').move_selection_next,
        ['<C-k>'] = require('telescope.actions').move_selection_previous,
        ['<C-c>'] = require('telescope.actions').close,
        ['<CR>'] = require('telescope.actions').select_default,
        ['<C-x>'] = require('telescope.actions').select_horizontal,
        ['<C-v>'] = require('telescope.actions').select_vertical
      }
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
  }
})
require('telescope').load_extension('fzf')
require('telescope').load_extension('ui-select')
