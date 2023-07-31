require("lspsaga").setup {
  code_action = {
    keys = {
      quit = { 'q', '<esc>', '<C-c>' },
    }
  },
  rename = {
    quit = '<esc>',
  },
  lightbulb = {
    virtual_text = false,
  }
}
