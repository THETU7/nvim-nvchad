local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "gopls", "cmake" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local capabilities_clangd = vim.lsp.protocol.make_client_capabilities()
capabilities_clangd = require("cmp_nvim_lsp").default_capabilities(capabilities_clangd)
capabilities_clangd.offsetEncoding = { "utf-16" }

lspconfig.clangd.setup { on_attach = on_attach, capabilities = capabilities_clangd }

--
-- lspconfig.pyright.setup { blabla}
