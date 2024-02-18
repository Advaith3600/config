local base = require("plugins.configs.lspconfig")
local on_attach = function(client, bufnr)
  base.on_attach(client, bufnr)
  client.server_capabilities.documentFormattingProvider = true
end
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local servers = {"tsserver", "tailwindcss", "eslint", "pyright", "emmet_language_server", "html", "cssls"}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities
    }
end
