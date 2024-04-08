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
opt.foldenable = false
opt.mouse = ''

--vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {});

-- Treesitter folding 
vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'

vim.g.mapleader = ' '

--Pmenu apparently is the windows for diagnostic popups....
--was an unreadable magenta color, not sure how to do this in pure lua
--it's a start! 2 days of searching
vim.cmd('highlight Pmenu ctermbg=gray guibg=black')
