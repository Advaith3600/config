-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  theme_toggle = { "material-deep-ocean", "catppuccin" },
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.mason = {
  pkgs = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "prettier",
    "eslint-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "pyright",
    "emmet-language-server",
    "marksman",
    "phpactor",
    "pint", -- Laravel Pint
    "laravel-ls",
  },
}

return M
