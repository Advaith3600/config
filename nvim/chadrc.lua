---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'pastelDark',
    transparency = true,
    statusline = {
        theme = "vscode_colored",
    },
    ---@type HLTable
    hl_add = {
        NvimTreeOpenedFolderName = { fg = "green", bold = true },
    }
}
M.plugins = "custom.plugins"

return M
