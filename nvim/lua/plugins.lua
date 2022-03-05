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
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  use {'catppuccin/nvim', as = "catppuccin"}

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
      'lewis6991/gitsigns.nvim',
      requires = {
          'nvim-lua/plenary.nvim'
      },
      config = function()
          require('gitsigns').setup()
      end
  }

  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() 
          require'nvim-tree'.setup()
      end
  }

end)



