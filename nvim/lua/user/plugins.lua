local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- reload nvim whe this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}


return packer.startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  use { --Others
      'nvim-lua/plenary.nvim',
      'windwp/nvim-autopairs',
      --'nvim-treesitter/nvim-treesitter',
      'kyazdani42/nvim-web-devicons',
      'kyazdani42/nvim-tree.lua',
      'RRethy/vim-illuminate', -- automatically highlighting other uses of the word under the cursor
  }
  use 'fladson/vim-kitty' -- For kitty terminal
  use 'hkupty/iron.nvim' -- REPL for python
  use { --LSP
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',  -- simple to use language server installer
	  'jose-elias-alvarez/null-ls.nvim',-- for formatters and linters
      'folke/lsp-colors.nvim',
      -- 'glepnir/lspsaga.nvim',
      -- 'RishabhRD/popfix',
      -- 'RishabhRD/nvim-lsputils',
  }
  use { --CMP
      'hrsh7th/nvim-cmp', -- autocompletion
      'hrsh7th/cmp-buffer', -- buffer completions
      'hrsh7th/cmp-path', -- path completions
      'hrsh7th/cmp-cmdline', -- cmdline completions
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',
      'saadparwaiz1/cmp_luasnip'
  }
  use { -- snipts
      'L3MON4D3/LuaSnip', --snippet engine
      'rafamadriz/friendly-snippets' -- a bunch of snippets to use
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
   if packer_bootstrap then 
       require('packer').sync()
   end

end)



