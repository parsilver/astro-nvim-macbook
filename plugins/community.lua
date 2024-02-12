return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Appearance
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.scrolling.mini-animate" },

  -- Language packs
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.php" },
  { import = "astrocommunity.pack.go" },
}
