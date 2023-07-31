local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
  {
    "nvim-telescope/telescope-file-browser.nvim",
    lazy = true
  },
  {
    "folke/tokyonight.nvim",
    priority = 1000
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  },
  { "williamboman/nvim-lsp-installer" },
  { "neovim/nvim-lspconfig" },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies =
    "nvim-telescope/telescope.nvim"
  },
  {
    "folke/which-key.nvim",
    lazy = true
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      opt = true
    }
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  {
    "folke/trouble.nvim",
    dependencies = "nvim-tree/nvim-web-devicons"
  },
  { "lewis6991/gitsigns.nvim" },
  { "numToStr/Comment.nvim" },
  { "TC72/auto-session" },
  { "karb94/neoscroll.nvim" },
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "saadparwaiz1/cmp_luasnip", "hrsh7th/cmp-nvim-lsp" }
  },
  { "github/copilot.vim" },
  {
    "L3MON4D3/LuaSnip",
    lazy = true
  },
  { "onsails/lspkind.nvim" },
  { "akinsho/toggleterm.nvim" },
  { "pantharshit00/vim-prisma" },
  { "norcalli/nvim-colorizer.lua" },
  { "baskerville/vim-sxhkdrc" },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true
  },
  { "ahmedkhalf/project.nvim" },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    lazy = true
  },
  { "OmniSharp/omnisharp-vim" },
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu"
  },
  { "folke/lsp-colors.nvim" },
  {
    "glepnir/lspsaga.nvim",
    dependencies = { { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" } }
  },
  { "RRethy/vim-illuminate" },
  { "mfussenegger/nvim-dap" },
  {
    "akinsho/flutter-tools.nvim",
    dependencies = "nvim-lua/plenary.nvim"
  },
  { "evanleck/vim-svelte" },
  { "ziontee113/color-picker.nvim" },
  { "ray-x/lsp_signature.nvim" },
  { "rafamadriz/friendly-snippets" },
  { "stevearc/vim-arduino" },
  { "xiyaowong/transparent.nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    }
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = true
  },
})
