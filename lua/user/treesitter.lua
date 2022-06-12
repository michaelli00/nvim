local treesitter_status_ok, treesitter = pcall(require, "cmp")
if not treesitter_status_ok then
  vim.api.nvim_notify('Unable to find treesitter')
  return
end

local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = { "c", "lua", "javascript", "python" },
  sync_install = false,
  ignore_install = { "" },                      -- List of parsers to ignore installing
  highlight = {
    enable = true,                              -- false will disable the whole extension
    disable = { "" },                           -- list of language that will be disabled
    additional_vim_regex_highlighting = true,

  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" },              -- list of languages you want to disable the plugin for
    extended_mode = true,                       -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil,                       -- Do not enable for files with more than n lines, int
    -- colors = {},                             -- table of hex strings
    -- termcolors = {}                          -- table of colour name strings
  },
  matchup = {
    enable = true,                              -- mandatory, false will disable the whole extension
    disable = { "" },                           -- optional, list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
