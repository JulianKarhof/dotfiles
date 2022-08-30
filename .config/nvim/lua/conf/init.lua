require('bufferline').setup {}
require('gitsigns').setup {}
require('Comment').setup {}
require('neoscroll').setup {}
require('colorizer').setup()

require('fidget').setup {
  text = {
    spinner = "dots",
  },
}

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

require "conf.toggleterm"
require "conf.alpha"
require "conf.cmp"
require "conf.telescope"
