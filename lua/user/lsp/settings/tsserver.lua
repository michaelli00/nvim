-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#tsserver
-- NOTE: Need to configure tsconfig.json or jsconfig.json in the root of project
-- An example that disables type checking in JS files is
--
-- {
--   "compilerOptions": {
--     "module": "commonjs",
--     "target": "es6",
--     "checkJs": false
--   },
--   "exclude": [
--     "node_modules"
--   ]
-- }
return {
  settings = { }
}
