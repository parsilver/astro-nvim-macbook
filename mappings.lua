-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H`, `L` and `<TAB>`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<TAB>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
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
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },

  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,

    ["<C-x>"] = { "<C-\\><C-n>", desc = "Cancel terminal" },
    ["<C-c>"] = { "<C-\\><C-n>:bd!<CR>", desc = "Force close terminal" },
  },

  i = {
    -- Move selected line / block of text in insert mode
    ["<C-j>"] = { "<esc>:m .+1<CR>==gi", desc = "Move line/block down" },
    ["<C-k>"] = { "<esc>:m .-2<CR>==gi", desc = "Move line/block up" },
  },

  v = {
    -- Move selected line / block of text in visual mode
    ["<C-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move line/block down" },
    ["<C-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move line/block up" },
  },
}
