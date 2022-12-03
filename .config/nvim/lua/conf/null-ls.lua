local nls = require("null-ls")
local b = nls.builtins;

nls.setup({
  sources = {
    b.formatting.prettierd,
    b.diagnostics.eslint_d,
    b.formatting.dart_format,
  }
})
