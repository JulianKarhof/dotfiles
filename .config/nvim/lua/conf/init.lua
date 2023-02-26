require('bufferline').setup {}
require('gitsigns').setup {}
require('Comment').setup {}
require('neoscroll').setup {}
require('colorizer').setup()
require("lspsaga").setup {}
require("color-picker")

require("flutter-tools").setup {
    debugger = {
        enabled = true,
    },
    dev_log = {
        enabled = false,
    },
    dev_tools = {
        autostart = true,
        auto_open_browser = true,
    },
}

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

require('project_nvim').setup {
    detection_methods = { "pattern" },
    patterns = { ".git", ">projects", "=nvim" },
}

require "conf.nvim-tree"
require "conf.null-ls"
require "conf.toggleterm"
-- require "conf.alpha"
require "conf.cmp"
require "conf.telescope"
require "conf.auto-session"
