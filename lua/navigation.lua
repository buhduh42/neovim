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
