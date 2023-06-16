return {

  { "gbprod/yanky.nvim" },
  { "p00f/clangd_extensions.nvim" },
  -- {
  --   "yorickpeterse/nvim-window",
  --   event = "VeryLazy",
  --   Keys = {},
  --   opts = {
  --     border = "rounded",
  --   },
  -- },
  {
    "APZelos/blamer.nvim",
    event = "User AstroGitFile",
    init = function()
      vim.g.blamer_prefix = "  󰊢  "
      vim.g.blamer_show_in_insert_modes = 0
      vim.g.blamer_show_in_visual_modes = 0
      vim.g.blamer_delay = 200
    end,
  },
  -- { "shellRaining/hlchunk.nvim", event = { "UIEnter" } },
  -- { "nvim-treesitter/nvim-treesitter-context" },
  -- {
  --   "anuvyklack/windows.nvim",
  --   dependencies = {
  --     "anuvyklack/middleclass",
  --     "anuvyklack/animation.nvim"
  --   },
  --   config = function()
  --     vim.o.winwidth = 10
  --     vim.o.winminwidth = 10
  --     vim.o.equalalways = false
  --     require('windows').setup()
  --   end
  -- },
}
