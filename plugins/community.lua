return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Pack
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.lua" },

  -- Scrolling
  { import = "astrocommunity.scrolling.neoscroll-nvim" },

  -- Color
  { import = "astrocommunity.color.transparent-nvim" },

  -- Diagnostic
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Editing Support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },

  -- Media
  { import = "astrocommunity.media.vim-wakatime" },

  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },

  -- Project
  { import = "astrocommunity.project.nvim-spectre" },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
