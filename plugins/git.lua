return {
  {
    "APZelos/blamer.nvim",
    enabled = false,
    event = "User AstroGitFile",
    init = function()
      vim.g.blamer_prefix = "  󰊢  "
      vim.g.blamer_show_in_insert_modes = 0
      vim.g.blamer_show_in_visual_modes = 0
      vim.g.blamer_delay = 200
    end,
  },
  { "tpope/vim-fugitive", event = "VeryLazy" },
}
