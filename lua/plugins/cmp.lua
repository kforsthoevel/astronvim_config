return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  dependencies = {
    "petertriho/cmp-git",
  },

  -- override the options table that is used in the `require("cmp").setup()` call
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the sources part of the options table
    opts.sources = cmp.config.sources {
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "path", priority = 600 },
      {
        name = "git",
        priority = 850,
        option = {
          filetypes = { "gitcommit", "neogitcommitmessage", "NeogitCommitMessage" },
        },
      },
      {
        name = "buffer",
        priority = 500,
        option = {
          get_bufnrs = function() return vim.api.nvim_list_bufs() end,
        },
      },
    }
    cmp.setup.filetype({ "gitcommit" }, {
      sources = cmp.config.sources {
        {
          name = "git",
        },
      },
    })
    require("cmp_git").setup {
      filetypes = { "gitcommit", "NeogitCommitMessage" },
      github = {
        hosts = { "github.com" },
      },
    }
  end,
}
