return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- Bars and lines
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = "120",
      disabled_filetypes = { "help" },
    },
  },

  -- Colorscheme
  {
    import = "astrocommunity.colorscheme.catppuccin",
    opts = {
      styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "italic" },
        keywords = { "italic" },
        strings = { "italic" },
        variables = { "italic" },
        numbers = { "italic" },
        booleans = { "italic" },
        properties = { "italic" },
        types = { "italic" },
        operators = { "italic" },
      },
    },
  },

  -- Pack
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.prisma" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.bash" },

  -- Scrolling
  { import = "astrocommunity.scrolling.neoscroll-nvim" },

  -- Color
  { import = "astrocommunity.color.transparent-nvim" },

  -- Diagnostic
  { import = "astrocommunity.diagnostics.trouble-nvim" },

  -- Git
  { import = "astrocommunity.git.diffview-nvim" },

  -- Editing Support
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  -- { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.yanky-nvim" },

  -- Media
  { import = "astrocommunity.media.vim-wakatime" },

  -- Motion
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },
  -- { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.motion.mini-surround" },

  -- Indent
  { import = "astrocommunity.indent.indent-blankline-nvim", opts = {
    scope = {
      enabled = false,
    },
  } },

  -- Project
  { import = "astrocommunity.project.nvim-spectre" },

  -- Completion
  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
