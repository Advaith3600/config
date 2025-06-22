require "nvchad.autocmds"

vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = { "*.md" },
  callback = function ()
    vim.cmd("Markview splitClose");
    vim.cmd("Markview splitOpen");
  end
});
