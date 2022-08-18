local g = vim.g
local o = vim.o
local wo = vim.wo
local cmd = vim.cmd

g.mapleader = " "


-- set background color
g.background = "dark"

-- set theme
g.tokyonight_style = "night"
cmd [[colorscheme tokyonight]]

-- prevent shifting when loading lsp gutter icons
o.signcolumn = 'yes'
o.termguicolors = true

-- set tab width
local TAB_WIDTH = 2
o.tabstop = TAB_WIDTH
o.shiftwidth = TAB_WIDTH
o.expandtab = true

-- sync clipboards
o.clipboard = "unnamedplus"
wo.number = true
o.mouse = 'a'

-- whichkey timeout
o.timeoutlen = 300

-- enable persistent undos
o.undofile = true
o.undolevels = 1000

-- cursor line
o.cul = true

-- exclude dashboard
g.indentLine_fileTypeExclude = { 'dashboard' }

-- set gutter icons
local signs = {
  Error = " ",
  Warn = " ",
  Hint = " ",
  Info = " "
}

for name, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config {
  virtual_text = {
    prefix = "",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
}

-- Reload all user config lua modules
local function reload()
  for name, _ in pairs(package.loaded) do
    if name:match('^cnull') then
      package.loaded[name] = nil
    end
  end

  dofile(vim.env.MYVIMRC)
end

vim.api.nvim_command(string.format('command! %s lua %s', 'Reload', reload))
