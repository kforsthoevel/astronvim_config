-- local cmp = require "cmp"

return {
  "hrsh7th/nvim-cmp",
  opts = {
    -- performance = {
    --   debounce = 300,
    --   throttle = 120,
    --   fetching_timeout = 100
    -- },
    -- experimental = {
    --   ghost_text = true,
    -- },
    sources = {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 700 },
      { name = "path", priority = 650 },
      {
        name = "buffer",
        priority = 400,
        option = {
          get_bufnrs = function() return vim.api.nvim_list_bufs() end,
        },
      },
    },
  },
  -- cmp.setup.cmdline({ "/", "?" }, {
  --   mapping = cmp.mapping.preset.cmdline(),
  --   sources = {
  --     { name = "buffer" },
  --   },
  -- }),
  -- cmp.setup.cmdline(":", {
  --   mapping = cmp.mapping.preset.cmdline(),
  --   sources = cmp.config.sources({
  --     { name = "path" },
  --   }, {
  --     {
  --       name = "cmdline",
  --       option = {
  --         ignore_cmds = { "Man", "!" },
  --       },
  --     },
  --   }),
  -- }),
}
