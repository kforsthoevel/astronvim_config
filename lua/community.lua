-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.ansible" },
  { import = "astrocommunity.pack.chezmoi" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.helm" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.terraform" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.icon.mini-icons" },
  { import = "astrocommunity.utility.telescope-fzy-native-nvim" },
  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  -- { import = "astrocommunity.git.neogit" },
  -- import/override with your plugins folder
}
