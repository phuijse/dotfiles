local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost _plugins.lua source <afile> | PackerCompile
  augroup end
]])


return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use {
      'hkupty/iron.nvim',
      'nvim-treesitter/nvim-treesitter',
      'fladson/vim-kitty',
      'neovim/nvim-lspconfig',
      'folke/lsp-colors.nvim',
      'hrsh7th/nvim-cmp', 
      'hrsh7th/cmp-nvim-lsp',
      -- 'glepnir/lspsaga.nvim',
      -- 'RishabhRD/popfix',
      -- 'RishabhRD/nvim-lsputils',
  }
  
  use {
      'nvim-telescope/telescope.nvim', 
      requires = {'nvim-lua/plenary.nvim'}
  }
  
  use {
      'lewis6991/gitsigns.nvim',
      requires = {'nvim-lua/plenary.nvim'}
  }
  
  use 'folke/tokyonight.nvim'
  
  use {
      'catppuccin/nvim', as = "catppuccin",
      config = function()
          require('catppuccin').setup {
              transparent_background = true,
              integrations = {
                  treesitter = true,
                  native_lsp = {
                      enabled = true,
                      virtual_text = {
                          errors = "italic",
                          hints = "italic",
                          warnings = "italic",
                          information = "italic",
                      },
                      underlines = {
                          errors = "underline",
                          hints = "underline",
                          warnings = "underline",
                          information = "underline",
                      },
                  },
                  lsp_trouble = true,
                  lsp_saga = true,
                  telescope = true,
                  gitsigns = true,
              }
          }
      end
  }


  use {
      'feline-nvim/feline.nvim',
      requires = {
          'kyazdani42/nvim-web-devicons', 
      },
      config = function()
          require('feline').setup({
              components = require('catppuccin.core.integrations.feline'),
          })
      end
  }
  


  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() 
          require'nvim-tree'.setup {
              auto_close = true,
              hijack_cursor = true,
              filters = {
                  dotfiles = true,
              }
          }
      end
  }
  
  use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
  })

end)



