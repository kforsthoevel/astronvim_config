-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>k"] = {
      name = "Test",
      t = { "<cmd>TestNearest -strategy=neovim<cr>", "Runs the test nearest to the cursor" },
      T = { "<cmd>TestFile -strategy=neovim<cr>", "Runs all tests in the current file" },
      a = { "<cmd>TestSuite -strategy=neovim<cr>", "Runs the whole test suite" },
      l = { "<cmd>TestLast -strategy=neovim<cr>", "Runs the last test" },
      g = { "<cmd>TestVisit -strategy=neovim<cr>", "Visits the test file" },
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
