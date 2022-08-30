-- format on save
local highlight_group = vim.api.nvim_create_augroup('Format', { clear = true })
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    vim.cmd("mkview")
    vim.lsp.buf.format()
    vim.cmd("silent! loadview")
  end,
  group = highlight_group,
})

-- highlight yank
highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
})

local dashboard_group = vim.api.nvim_create_augroup("CleanDashboard", {})

vim.api.nvim_create_autocmd("User", {
  group = dashboard_group,
  pattern = "AlphaReady",
  callback = function()
    vim.opt.showtabline = 0
    vim.opt.showmode = false
    vim.opt.laststatus = 0
    vim.opt.showcmd = false
    vim.opt.ruler = false
  end,
})

vim.api.nvim_create_autocmd("BufUnload", {
  group = dashboard_group,
  pattern = "<buffer>",
  callback = function()
    vim.opt.showtabline = 2
    vim.opt.showmode = true
    vim.opt.laststatus = 3
    vim.opt.showcmd = true
    vim.opt.ruler = true
  end,
})
