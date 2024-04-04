return {
  "NeogitOrg/neogit",
  config = function()
    require("neogit").setup {
      disable_commit_confirmation = true,
      integrations = {
        diffview = true,
      },
      commit_editor = {
        kind = "vsplit",
      },
    }
  end,
  keys = {
    { "<Leader>gg", "<cmd>Neogit<cr>", desc = "Start Neogit" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = "Neogit",
}
