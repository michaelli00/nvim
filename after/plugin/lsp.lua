local lsp = require("lsp-zero")
local cmp = require('cmp')
local luasnip = require("luasnip")

lsp.preset("recommended")

local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ['<CR>'] = cmp.mapping.confirm { select = true },
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'path' },
    { name = 'buffer' },
    { name = 'luasnip' },
  },
}

lsp.set_preferences({
  suggest_lsp_servers = false,
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I'
  }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
      return
  end

  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>gh", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>gf", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>gn", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>gm", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float)
  vim.keymap.set('n', '<leader>dq', vim.diagnostic.setloclist)
  vim.keymap.set("i", "<leader>gs", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})

require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
	globals = { 'vim' },
      },
    },
  },
}
