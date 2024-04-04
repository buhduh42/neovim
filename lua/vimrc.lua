local TAB_WIDTH = 2
local opt = vim.opt
--opt.backspace = indent,eol,start
opt.tabstop = TAB_WIDTH
opt.shiftwidth = TAB_WIDTH
opt.expandtab = true
opt.hlsearch = false
opt.smarttab = true
opt.ruler = true
opt.smartindent = true
opt.number = true
opt.ignorecase = true
opt.termguicolors = true

--vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {});
