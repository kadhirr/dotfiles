-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use "nvim-lua/plenary.nvim"
  use 'nvim-treesitter/nvim-treesitter'
  use {
      "williamboman/nvim-lsp-installer",
      "neovim/nvim-lspconfig",
      'jose-elias-alvarez/null-ls.nvim', -- Null ls is used for code formatting and pylint analysis
      'hrsh7th/nvim-cmp', -- Autocompletion plugin
      'hrsh7th/cmp-nvim-lsp',
      {"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"},-- Autocompletion with LSPs
      'onsails/lspkind.nvim'
  }
  use {
  "nvim-lualine/lualine.nvim",
  event = "VimEnter",
  config = function()
   require("lualine").setup()
  end,
  requires = { "nvim-web-devicons" },
}
use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup()
    end
}
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
end)
