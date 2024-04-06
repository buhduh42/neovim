return require('packer').startup(function(use)
  -- Configurations will go here
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'   
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'  
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  use 'ms-jpq/coq_nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
  }
  use 'onsails/lspkind-nvim'
end)
