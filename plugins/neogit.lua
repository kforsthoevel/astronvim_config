return {
  "TimUntersberger/neogit",
  {
    "TimUntersberger/neogit",
    config = function()
      require("neogit").setup {
        integrations = {
          diffview = true,
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    lazy = false,
  },
}
