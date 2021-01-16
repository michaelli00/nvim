"lsp setup"
nnoremap <leader>gd :LspDefinition<CR>

"settings for autocomplete"
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
