--nvim-tree
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

--require('snippy').setup({})

--[[
--was going to write my own nerdtree replacement, not too involved, sticking with
--nvim tree for now
--tree.change_root({path})                    *nvim-tree-api.tree.change_root()*

-- stuck at keymappings for tabs only, can remap for buffers and global
-- just not a tab
-- need to think about this some, switching to nvim-tree for now
local function close_navigation()
  --vim.w.keymap doesn't work, vim.w sets window scoped vars
  vim.w.keymap.set('n', '<C-n>', open_navigation, {})
end

local function open_navigation()
  vim.cmd('topleft +vs +Explore')
  vim.cmd('vertical resize +23')
  local bnr = vim.api.nvim_get_current_buf()
  local wnr = vim.api.nvim_get_current_win()
  vim.w.keymap.set('n', '<C-n>', close_navigation, {})
end

local map = vim.api.nvim_set_keymap
vim.keymap.set('n', '<C-n>', open_navigation, {})
--]]
