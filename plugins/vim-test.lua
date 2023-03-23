return {
  "vim-test/vim-test",
  cmd = { "TestFile", "TestNearest", "TestSuite", "TestLast", "TestVisit" },
  keys = {
    { "<leader>kt", "<cmd>TestNearest -strategy=neovim<cr>", desc = "Runs the test nearest to the cursor" },
    { "<leader>kT", "<cmd>TestFile -strategy=neovim<cr>",    desc = "Runs all tests in the current file" },
    { "<leader>ka", "<cmd>TestSuite -strategy=neovim<cr>",   desc = "Runs the whole test suite" },
    { "<leader>kl", "<cmd>TestLast -strategy=neovim<cr>",    desc = "Runs the last test" },
    { "<leader>kg", "<cmd>TestVisit<cr>",                    desc = "Visits the test file" },
  },
}
