---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'catppuccin',
    transparency = true,
    statusline = {
        theme = "minimal",
        separator_style = "round",
        overriden_modules = function(modules)
            local toHide = { 1, 7, 9, 11 }
            for i = 1, #toHide do
                modules[toHide[i]] = (function()
                    return ""
                end)()
            end
            local lastIndex = 10
            modules[lastIndex] = (function()
                local str = modules[lastIndex]
                local pos = str:find(' %#ST_EmptySpace#', 1, true)
                if pos then
                    return str:sub(1, pos-1) .. str:sub(pos+#' %#ST_EmptySpace#')
                else
                    return str
                end
            end)()
        end
    },
}

M.plugins = "custom.plugins"

M.mappings = {
    general = {
        n = {
            ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "Navigate left" },
            ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "Navigate down" },
            ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "Navigate up" },
            ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "Navigate right" },
        }
    }
}

return M
