return {
  "APZelos/blamer.nvim",
  event = "User AstroGitFile",
  init = function()
    vim.g.blamer_prefix = "  󰊢  "
    vim.g.blamer_show_in_insert_modes = 0
    vim.g.blamer_show_in_visual_modes = 0
    vim.g.blamer_delay = 200
  end,
}
