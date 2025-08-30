require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map({ "n", "v" }, "y", [["+y]], { desc = "Yank to system clipboard" })
map("n", "Y", [["+Y]], { desc = "Yank to system clipboard" })

map({ "n", "v" }, "p", [["+p]], { desc = "Paste below from system clipboard" })
map("n", "P", [["+P]], { desc = "Paste above from system clipboard" })

map("x", "<leader>p", [["_dP]], { desc = "Paste without yank" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yank" })

map("n", "<leader>fx", vim.diagnostic.open_float, {
  desc = "Open diagnostics in floating window",
})

map("n", "<C-w>h", "<C-w>s", { desc = "Split window horizontally" })

map("n", "<C-q>", "<cmd>wqa<cr>", { desc = "Save all and quit" })
map("n", "<C-M-n>", "<cmd>Nvdash<cr>", { desc = "Open NvDash" })

-- Copilot mappings
vim.g.copilot_enabled = false
vim.g.copilot_no_tab_map = true
map("i", "<C-g>", 'copilot#Accept("")', { replace_keycodes = false, expr = true })
map("i", "<C-x>", 'copilot#Dismiss()', { replace_keycodes = false, expr = true })

-- This mapping has to be here and not in the plugins page
map("n", "<C-h>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left" })
map("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>", { desc = "Navigate down" })
map("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>", { desc = "Navigate up" })
map("n", "<C-l>", "<cmd>TmuxNavigateRight<cr>", { desc = "Navigate right" })
