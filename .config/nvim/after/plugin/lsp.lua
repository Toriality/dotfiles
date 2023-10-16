--local lsp = require("lsp-zero").preset({})
--
--lsp.on_attach(function(client, bufnr)
--    lsp.default_keymaps({ buffer = bufnr })
--end)
--
--lsp.format_on_save({
--    format_opts = {
--        async = false,
--        timeout_ms = 10000,
--    },
--    servers = {
--        ['lua_ls']        = { 'lua' },
--        ['rust_analyzer'] = { 'rust' },
--        ['clangd']        = { 'c' },
--    }
--})
--
--lsp.setup()
--
--local cmp = require("cmp")
--cmp.setup({
--    mapping = {
--        ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
--    }
--})

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
      ensure_installed = {},
      handlers = {
            lsp_zero.default_setup,
          },
})

