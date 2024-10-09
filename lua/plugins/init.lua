-- Hanya diperlukan jika packer dikonfigurasikan sebagai `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer bisa mengelola dirinya sendiri
  use 'wbthomason/packer.nvim'

  -- Tema Onedark
  use 'navarasu/onedark.nvim'

  -- Treesitter untuk highlighting yang lebih baik
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

  -- Lualine untuk statusline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },  -- tidak opt
    config = function()
      require('lualine').setup {
        options = { theme = 'onedark' }
      }
    end
  }

  -- Bufferline untuk manajemen tab
  use {
    'akinsho/bufferline.nvim', 
    tag = "*", 
    requires = 'nvim-tree/nvim-web-devicons', -- tidak opt
    config = function()
      require('bufferline').setup {}
    end
  }

  -- Nvim-tree untuk file explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- untuk ikon file, tidak opt
    },
    config = function()
      require('nvim-tree').setup {}
    end
  }

  -- Penutupan otomatis tag dan pasangan
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-autopairs'}

  -- Which-key untuk petunjuk keybinding
  use {'folke/which-key.nvim'}
  use 'rcarriga/nvim-notify'








   -- Plugin LSP untuk Neovim
  use 'neovim/nvim-lspconfig'

  -- Plugin null-ls untuk integrasi LSP dengan tools lain seperti Prettier
  use 'jose-elias-alvarez/null-ls.nvim'

  -- Plugin Prettier untuk format otomatis
  use 'MunifTanjim/prettier.nvim'
 










end)

