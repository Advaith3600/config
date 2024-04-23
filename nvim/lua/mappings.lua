require "nvchad.mappings"

vim.cmd([[
  function! SubstituteVisualSelection()
    normal! gvy
    let s = @"
    call feedkeys(":%s/" . s . "/" . s . "/gIc\<Left>\<Left>\<Left>\<Left>")
  endfunction
]], false)

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

map("x", "<leader>p", [["_dP]])
map({ "n", "v" }, "<leader>d", [["_d]])

map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])
map("v", "<leader>s", ":call SubstituteVisualSelection()<CR>", { desc = "Substitute Visual Selection" })

map('n', '<leader>fx', vim.diagnostic.open_float)
map('n', '<leader>fg', ':GuessIndent<CR>')
