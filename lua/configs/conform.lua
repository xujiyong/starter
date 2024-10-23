local options = {
  formatters_by_ft = {
    lua = { "lua_ls" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    bash = { "shfmt" },
    sh = { "shfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
