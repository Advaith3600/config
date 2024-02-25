vim.cmd([[
  function! SubstituteVisualSelection()
    normal! gvy
    let s = @"
    call feedkeys(":%s/" . s . "/" . s . "/gIc\<Left>\<Left>\<Left>\<Left>")
  endfunction
]], false)

local mappings = {}

mappings.general = {
    n = {
        ["<C-h>"] = { "<cmd>TmuxNavigateLeft<cr>", "Navigate left" },
        ["<C-j>"] = { "<cmd>TmuxNavigateDown<cr>", "Navigate down" },
        ["<C-k>"] = { "<cmd>TmuxNavigateUp<cr>", "Navigate up" },
        ["<C-l>"] = { "<cmd>TmuxNavigateRight<cr>", "Navigate right" },

        ["<C-d>"] = { "<C-d>zz", "Scroll down and recenter" },
        ["<C-u>"] = { "<C-u>zz", "Scroll up and recenter" },

        ["<leader>d"] = { '"_d', "Delete into black hole register" },
        ["<leader>fx"] = { 'vim.diagnostic.open_float', "Open diagnostic float" },
        ["<leader>fg"] = { ':GuessIndent<CR>', "Guess indent" },
        ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]], "Substitute visual selection" },
    },
    v = {
        ["J"] = { ":m '>+1<CR>gv=gv", "Move selection down" },
        ["K"] = { ":m '<-2<CR>gv=gv", "Move selection up" },
        ["<leader>d"] = { '"_d', "Delete into black hole register" },
        ["<leader>s"] = { ':call SubstituteVisualSelection()<CR>', "Substitute visual selection" },
    },
    x = {
        ["<leader>p"] = { '"_dP', "Paster after deleting into black hole register" },
    }
}

return mappings
