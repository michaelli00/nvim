---- Better wildmenu ----
local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})
wilder.set_option('use_python_remote_plugin', 0)          -- Disable python to avoid errors
wilder.set_option('pipeline', {
  wilder.branch(
    wilder.cmdline_pipeline(),
    wilder.search_pipeline()
  ),
})
wilder.set_option('renderer', wilder.wildmenu_renderer({  -- Highlight matching text in wildmenu
  highlighter = wilder.basic_highlighter(),
}))
