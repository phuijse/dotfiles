local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
    execute 'packadd packer.nvim'
end

vim.cmd [[packadd packer.nvim]]

-- reload nvim whe this file is saved
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
      'nvim-lua/plenary.nvim',
      'windwp/nvim-autopairs',
      --'nvim-treesitter/nvim-treesitter',
      'kyazdani42/nvim-web-devicons',
      'kyazdani42/nvim-tree.lua',
      'fladson/vim-kitty',
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',  -- simple to use language server installer
	  'jose-elias-alvarez/null-ls.nvim',-- for formatters and linters
      'RRethy/vim-illuminate', -- automatically highlighting other uses of the word under the cursor
      'folke/lsp-colors.nvim',
      'hrsh7th/nvim-cmp', -- autocompletion
      'hrsh7th/cmp-buffer', -- buffer completions
      'hrsh7th/cmp-path', -- path completions
      'hrsh7th/cmp-cmdline', -- cmdline completions
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'L3MON4D3/LuaSnip', --snippet engine
      'rafamadriz/friendly-snippets' -- a bunch of snippets to use
      -- 'glepnir/lspsaga.nvim',
      -- 'RishabhRD/popfix',
      -- 'RishabhRD/nvim-lsputils',
  }
  use 'terrortylor/nvim-comment'
  use {
      'lukas-reineke/indent-blankline.nvim',
      config = function()
          require('indent_blankline').setup({
              show_end_of_line = true,
          })
  end
  }
  use {
      'nvim-telescope/telescope.nvim', 
      requires = {'nvim-lua/plenary.nvim'}
  }
  
  use {
      'lewis6991/gitsigns.nvim',
      requires = {'nvim-lua/plenary.nvim'},
      config = function()
          require('gitsigns').setup()
      end
  }
  
  use 'folke/tokyonight.nvim'
  
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  
  use({
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
  })

  use({
   "quarto-dev/quarto-vim",
   requires = {
      {"vim-pandoc/vim-pandoc-syntax"},
   },
   ft = {"quarto"},
   })

end)



