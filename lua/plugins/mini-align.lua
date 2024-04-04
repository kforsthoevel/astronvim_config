return {
  "echasnovski/mini.align",
  {
    "echasnovski/mini.align",
    version = false,
    keys = {
      { "ga", "", mode = "v", desc = "Start mini.align" },
      { "gA", "", mode = "v", desc = "Start mini.align with preview" },
    },
    config = function() require("mini.align").setup() end,
  },
}
