-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  -- Using Packer for theme
  use 'navarasu/onedark.nvim'

  -- Treesitter for better syntax highlighting
  use {'nvim-treesitter/nvim-treesitter', run= ':TSUpdate'}

  -- Lualine for statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Bufferline for tab management
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Nvim-tree for file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- for file icons
    }
  }

  -- Auto-closing tags and pairs
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}

  -- Which-key for keybinding hints
  use {'folke/which-key.nvim'}

end)

