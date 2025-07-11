require("nvchad.configs.lspconfig").defaults()

local servers = {
  "lua_ls",
  "html",
  "cssls",
  "ts_ls",
  "tailwindcss",
  "eslint",
  "pyright",
  "emmet_language_server",
  "marksman",
  "phpactor"
}

vim.lsp.enable(servers)
