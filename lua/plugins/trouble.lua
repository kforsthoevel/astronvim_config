return {
  "folke/trouble.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function() require("trouble").setup {} end,
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Trouble toggle" },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Trouble workspace" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Trouble diagnostics" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Trouble quickfix" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Trouble loclist" },
    { "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "TroublLSP references" },
  },
}
