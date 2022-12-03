local nls = require("null-ls")
local b = nls.builtins;

nls.setup({
  sources = {
    b.formatting.prettier,
    b.diagnostics.eslint,
    b.formatting.dart_format,
  }
})
