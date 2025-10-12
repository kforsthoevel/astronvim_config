-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.nginx_beautifier,
      null_ls.builtins.formatting.prettier.with {
        filetypes = { "html", "json", "yaml", "markdown", "ruby" },
      },
      null_ls.builtins.formatting.shfmt.with {
        args = { "-i", "2" },
      },
      -- null_ls.builtins.diagnostics.luacheck,
      null_ls.builtins.diagnostics.vale.with {
        extra_args = { "--config=/Users/kai/.config/vale/.vale.ini" },
      },
    }
    return config -- return final config table
  end,
}
