local lspconfig = require('lspconfig')

-- Mengonfigurasi LSP untuk JavaScript/TypeScript
lspconfig.tsserver.setup{
  on_attach = function(_, bufnr)
    -- Mengatur shortcut untuk memformat
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting_sync()<CR>', { noremap=true, silent=true })
  end,
}
