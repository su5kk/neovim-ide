local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
  return
end

--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
--
--servers = {'gopls'}
--for _, lsp in ipairs(servers) do
--  lspconfig[lsp].setup {
--    capabilities = capabilities,
--  }
--end
require "user.lsp.configs"
require("user.lsp.handlers").setup()
