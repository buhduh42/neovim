-- empty setup using defaults
-- require("nvim-tree").setup()

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
local api = require('nvim-tree.api')
require('nvim-tree').setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  -- was looking for functionality like nerd tree where 'cd' changes directory
  -- and (forgot it, muscle memory...) renders only that node and children
  -- turns out, Ctrl-] changes directory AND renders
  --on_attach = function(bufnr)
    --api.config.mappings.default_on_attach(bufnr)
    --vim.keymap.set('n', '5', api.tree.toggle, {buffer = bufnr})
  --end,
})

vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', {});

--tree.change_root({path})                    *nvim-tree-api.tree.change_root()*
