return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      -- The following are optional:
      { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
    },
    cmd = { "CodeCompanionChat" },
    keys = {
      { "<leader>a", "<cmd>CodeCompanionChat Toggle<cr>", desc = "CodeCompanionChat Toggle" },
    },
    config = true,
  },
}
