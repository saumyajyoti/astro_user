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
    ["<C-i>"] = {
      ":lua require('noice').redirect('Inspect!')<cr>",
      desc = "Get Syn Stack under cursor",
    },

    -- quick save
    ["<C-s>"] = { ":w<cr>", desc = "Save File" },       -- change description but the same command

    ["<C-z>"] = { ":undo<cr>", desc = "Undo Changes" }, -- alt u
    ["<C-y>"] = { ":redo<cr>", desc = "Redo Changes" }, -- alt C-R

  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-s>"] = { "<esc>:w<cr>i", desc = "Save File" },
    ["<C-z>"] = { "<esc>:undo<cr>i", desc = "Undo Changes" }, -- alt u
    ["<C-y>"] = { "<esc>:redo<cr>i", desc = "Redo Changes" }, -- alt C-R
    -- ["jj"] = { "<esc>", desc = "Exit Insert Mode" },
  },
  c = {
    ["<S-Enter>"] = { "<Home>require('noice').redirect('<End>')<cr>", desc = "Redirect Cmdline" },
  },
}
