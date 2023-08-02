require('gitsigns').setup {}
require('Comment').setup {}
require('neoscroll').setup {}
require('colorizer').setup()
require("lsp_signature").setup {}
require("transparent").setup {
  extra_groups = {
    "NormalFloat",
    "NvimTreeNormal"
  },
}
require("color-picker")

require("trouble").setup {
  use_diagnostic_signs = true
}

require('lualine').setup {
  options = {
    component_separators = { left = ' ', right = '' },
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    globalstatus = true,
  },
}

require('project_nvim').setup {
  detection_methods = { "pattern" },
  patterns = { ".git", ">projects", "=nvim" },
}


require "conf.lspsaga"
require "conf.nvim-tree"
require "conf.null-ls"
require "conf.toggleterm"
require "conf.alpha"
require "conf.cmp"
require "conf.telescope"
require "conf.auto-session"
require "conf.neorg"
require "conf.noice"
require "conf.bufferline"
