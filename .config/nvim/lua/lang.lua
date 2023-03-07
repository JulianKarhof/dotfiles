local on_attach = function(_, bufnr)
  -- Create a command `:Format` local to the LSP buffer
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', vim.lsp.buf.format or vim.lsp.buf.formatting,
      { desc = 'Format current buffer with LSP' })
end

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

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
    lsp = {
        on_attach = on_attach,
        capabilities = capabilities,
    }
}

local servers = { 'clangd', 'rust_analyzer', 'pyright', 'tsserver', 'svelte', 'tailwindcss' }
--
require('nvim-lsp-installer').setup {
    ensure_installed = servers,
}

for _, lsp in ipairs(servers) do
  require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
  }
end

require('lspconfig').omnisharp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    use_mono = true
}

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

require('lspconfig').tsserver.setup {
    on_attach = on_attach,
    capabilities = capabilities,
}

require('lspconfig').lua_ls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = runtime_path,
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = { library = vim.api.nvim_get_runtime_file('', true) },
        },
    },
}
