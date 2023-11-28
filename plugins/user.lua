return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "rescript-lang/vim-rescript",
    -- lazy = false,
    -- config = function() ft = { "res", "resi", "rescript" } end,
    ft = { "res", "resi", "rescript" },
  },
  -- {
  --   "jordwalke/vim-reasonml",
  --   lazy = false,
  -- },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "reasonml-editor/vim-reason-plus",
    lazy = false,
  },
}
