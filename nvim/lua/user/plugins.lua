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
      'hrsh7th/nvim-cmp', -- autocompletion
      'hrsh7th/cmp-buffer', -- buffer completions
      'hrsh7th/cmp-path', -- path completions
      'hrsh7th/cmp-cmdline', -- cmdline completions
      'hrsh7th/cmp-nvim-lsp',
      -- 'glepnir/lspsaga.nvim',
      -- 'RishabhRD/popfix',
      -- 'RishabhRD/nvim-lsputils',
  }
  use 'terrortylor/nvim-comment'
  
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
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
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



