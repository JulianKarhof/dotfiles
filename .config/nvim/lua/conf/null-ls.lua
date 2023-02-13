local nls = require("null-ls")
local command_resolver = require("null-ls.helpers.command_resolver")
local b = nls.builtins;

nls.setup({
  sources = {
    b.formatting.prettierd,
    b.diagnostics.eslint_d.with({
      dynamic_command = command_resolver.from_yarn_pnp(),
      conditions = function(utils)
        return utils.root_has_file({ ".pnp.cjs" })
      end
    }),
  }
})
