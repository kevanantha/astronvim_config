-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local TERM = os.getenv "TERM"

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- map("n", "˚", "<cmd>m .-2<cr>==", { desc = "Move up" })
-- map("n", "∆", "<cmd>m .+1<cr>==", { desc = "Move down" })
-- map("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
-- map("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
-- map("v", "∆", ":m '>+1<cr>gv=gv", { desc = "Move down" })
-- map("v", "˚", ":m '<-2<cr>gv=gv", { desc = "Move up" })
local remap = vim.api.nvim_set_keymap

remap("n", "<ENTER>", ":", { noremap = true })

-- better indenting experience
-- Vmap for maintain Visual Mode after shifting > and <
remap("v", "<", "<gv", { noremap = true })
remap("v", ">", ">gv", { noremap = true })

-- Move visual block
vim.cmd "vnoremap J :m '>+1<CR>gv=gv"
vim.cmd "vnoremap K :m '<-2<CR>gv=gv"

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<A-S-Down>"] = { "<cmd>m .+1<cr>==", desc = "Move down" },
    ["<A-S-Up>"] = { "<cmd>m .-2<cr>==", desc = "Move up" },

    ["<C-h>"] = {
      function()
        if vim.fn.exists ":KittyNavigateLeft" ~= 0 and TERM == "xterm-kitty" then
          vim.cmd "KittyNavigateLeft"
        elseif vim.fn.exists ":TmuxNavigateLeft" ~= 0 then
          vim.cmd "TmuxNavigateLeft"
        else
          vim.cmd "wincmd h"
        end
      end,
      desc = "window left",
    },
    ["<C-l>"] = {
      function()
        if vim.fn.exists ":KittyNavigateRight" ~= 0 and TERM == "xterm-kitty" then
          vim.cmd "KittyNavigateRight"
        elseif vim.fn.exists ":TmuxNavigateRight" ~= 0 then
          vim.cmd "TmuxNavigateRight"
        else
          vim.cmd "wincmd l"
        end
      end,
      desc = "window right",
    },
    ["<C-j>"] = {
      function()
        if vim.fn.exists ":KittyNavigateDown" ~= 0 and TERM == "xterm-kitty" then
          vim.cmd "KittyNavigateDown"
        elseif vim.fn.exists ":TmuxNavigateDown" ~= 0 then
          vim.cmd "TmuxNavigateDown"
        else
          vim.cmd "wincmd j"
        end
      end,
      desc = "window down",
    },
    ["<C-k>"] = {
      function()
        if vim.fn.exists ":KittyNavigateUp" ~= 0 and TERM == "xterm-kitty" then
          vim.cmd "KittyNavigateUp"
        elseif vim.fn.exists ":TmuxNavigateUp" ~= 0 then
          vim.cmd "TmuxNavigateUp"
        else
          vim.cmd "wincmd k"
        end
      end,
      desc = "window up",
    },

    -- mappings seen under group name "Buffer"
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
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change descriptioe but the same command
  },
  i = {
    ["<A-S-Down>"] = { "<esc><cmd>m .+1<cr>==gi", desc = "Move down" },
    ["<A-S-Up>"] = { "<esc><cmd>m .-2<cr>==gi", desc = "Move up" },
  },
  v = {
    ["<A-S-Down>"] = { ":m '>+1<cr>gv=gv", desc = "Move down" },
    ["<A-S-Up>"] = { ":m '<-2<cr>gv=gv", desc = "Move up" },
    D = { "y'>p", desc = "Duplicate" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
