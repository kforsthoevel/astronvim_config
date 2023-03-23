return {
  "TimUntersberger/neogit",
  config = function()
    require("neogit").setup {
      disable_commit_confirmation = true,
      integrations = {
        diffview = true,
      },
      commit_popup = {
        kind = "vsplit",
      },
    }
  end,
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Start Neogit" },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
  },
  cmd = "Neogit",
}
