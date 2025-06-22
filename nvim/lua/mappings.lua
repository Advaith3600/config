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

map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yank" })

map("n", "<leader>fx", vim.diagnostic.open_float, {
  desc = "Open diagnostics in floating window",
})

map("n", "<C-w>%", "<C-w>v", { desc = "Split window vertically" })
map("n", '<C-w>"', "<C-w>s", { desc = "Split window horizontally" })

map("n", "<C-q>", "<cmd>wqa<cr>", { desc = "Save all and quit" })
