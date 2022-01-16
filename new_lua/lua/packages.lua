-- Use this video and playlist for basic reference: https://www.youtube.com/watch?v=ppMX4LHIuy4&list=PLf1rXVkRs4Bn_x0iXgaf20ZrorVjr9wP2&index=10
-- Now we will initialize the package manager, Packer.nvim
require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  -- Add other packages here
  use { 
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.opts)
    end
  }
  use 'nvim-treesitter/nvim-treesitter'
  use 'neovim/nvim-lspconfig'
  use 'joshdick/onedark.vim'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use "rafamadriz/neon"
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
-- For ultisnips
 use 'SirVer/ultisnips'
 use 'quangnguyen30192/cmp-nvim-ultisnips'
end)
