---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'pastelDark',
    transparency = true,
    statusline = {
        -- hide statusline
        overriden_modules = function(modules)
            for i = 1, #modules do
                modules[i] = (function()
                    return ""
                end)()
            end
        end,
    },
    ---@type HLTable
    hl_add = {
        NvimTreeOpenedFolderName = { fg = "green", bold = true },
    }
}
M.plugins = "custom.plugins"

return M
