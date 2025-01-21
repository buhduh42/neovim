local types = {
  "BufEnter", 
  "BufNewFile",
  "BufNew",
  "BufRead",
  "BufWinEnter",
}
vim.api.nvim_create_autocmd(types, {
  pattern = {"*.gd"},
  callback = function(_)
    vim.opt.expandtab = true
  end
})
