local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
  return
end

-- NOTE: Make sure all the binaries for the formatters and diagnostics are installed
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup {
  debug = false,
  sources = {
    -- Javascript
    formatting.prettier.with { extra_args = { "--single-quote", "--jsx-single-quote" , "--arrow-parens avoid"} },

    -- Python
    formatting.black.with { extra_args = { "--fast" } },
    diagnostics.flake8,
  },
}
