return {
  "TimUntersberger/neogit",
  config = function()
    require("neogit").setup {
      disable_commit_confirmation = true,
      integrations = {
        diffview = true,
      },
      commit_popup = {
        kind = "replace",
      },
    }
  end,
  keys = {
    { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = "Neogit",
}
