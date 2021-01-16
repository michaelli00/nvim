let g:vimspector_enable_mappings = 'HUMAN'
nmap <leader>dd :call vimspector#Launch()<CR>
nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval<CR>
nmap <leader>dw :VimspectorWatch<CR>
nmap <leader>do :VimspectorShowOutput<CR>
