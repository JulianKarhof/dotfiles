local function close_buffers()
  local windows = vim.api.nvim_list_wins()
  for _, value in ipairs(windows) do
    local has_var, _ = pcall(vim.api.nvim_win_get_var, value, 'alpha')
    local has_var2, _ = pcall(vim.api.nvim_win_get_var, value, 'fidget')

    local config = vim.api.nvim_win_get_config(value)

    if has_var or has_var2 or config.relative ~= "" then
      vim.api.nvim_win_close(value, true)
    end
  end
end

require('auto-session').setup {
  log_level = 'error',
  auto_session_suppress_dirs = { '~/', '~/projects' },
  pre_save_cmds = { close_buffers, ':FidgetClose' }
}
