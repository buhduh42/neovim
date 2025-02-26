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
    vim.opt.expandtab = false
    vim.opt.smarttab = false
    vim.opt.shiftwidth = 2
  end
})

local port = os.getenv('GDScript_Port') or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', port)
local pipe = '/tmp/godot.pipe'

vim.lsp.start({
  name = 'Godot',
  cmd = cmd,
  root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
  on_attach = function(client, bufnr)
    vim.api.nvim_command('echo serverstart("' .. pipe .. '")')
  end
})
