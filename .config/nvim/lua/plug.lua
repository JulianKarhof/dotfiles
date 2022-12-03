local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use "nvim-telescope/telescope-file-browser.nvim"
  use 'folke/tokyonight.nvim'
  use {
    'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }
  }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use "folke/which-key.nvim"
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'nvim-tree/nvim-web-devicons' }
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }
  use 'lewis6991/gitsigns.nvim'
  use 'numToStr/Comment.nvim'
  use 'rmagatti/auto-session'
  use 'karb94/neoscroll.nvim'
  use { 'goolord/alpha-nvim', requires = { 'nvim-tree/nvim-web-devicons' } }
  use { 'hrsh7th/nvim-cmp', requires = { 'saadparwaiz1/cmp_luasnip', 'hrsh7th/cmp-nvim-lsp' } }
  use 'github/copilot.vim'
  use 'L3MON4D3/LuaSnip'
  use 'onsails/lspkind.nvim'
  use 'j-hui/fidget.nvim'
  use { "akinsho/toggleterm.nvim", tag = 'v2.*' }
  use 'pantharshit00/vim-prisma'
  use 'norcalli/nvim-colorizer.lua'
  use 'baskerville/vim-sxhkdrc'
  use { 'jose-elias-alvarez/null-ls.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'nvim-tree/nvim-web-devicons'
  use 'ahmedkhalf/project.nvim'
  use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install' }
  use { 'OmniSharp/omnisharp-vim' }
  use { 'weilbith/nvim-code-action-menu', cmd = 'CodeActionMenu' }
  use 'folke/lsp-colors.nvim'
  use 'tami5/lspsaga.nvim'
  use 'RRethy/vim-illuminate'
  use {'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim'}

  if packer_bootstrap then
    require('packer').sync()
  end
end)
