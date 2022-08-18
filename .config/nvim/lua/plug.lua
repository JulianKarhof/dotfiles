return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-telescope/telescope-file-browser.nvim"
  use 'folke/tokyonight.nvim'
  use {
    'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use "folke/which-key.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }
  use 'lewis6991/gitsigns.nvim'
  use 'numToStr/Comment.nvim'
  use 'rmagatti/auto-session'
  use 'karb94/neoscroll.nvim'
  use { 'goolord/alpha-nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'hrsh7th/nvim-cmp', requires = { 'hrsh7th/cmp-nvim-lsp', 'saadparwaiz1/cmp_luasnip' } }
  use 'github/copilot.vim'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind.nvim'
  use 'j-hui/fidget.nvim'
  use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
  use 'pantharshit00/vim-prisma'
end)
