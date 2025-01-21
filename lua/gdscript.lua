local types = {
  "BufEnter", 
  "BufNewFile",
  "BufNew",
  "BufRead",
  "BufWinEnter",
}

-- getting bored of this, still a bit rusty with nvim
-- do something along the lines of :setfiletype gdscript
vim.api.nvim_create_autocmd(types, {
  pattern = {"*.gd"},
  callback = function(_)
    vim.opt.expandtab = true
  end
})
