return {
  {
    "2kabhishek/nerdy.nvim",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Nerdy",
  },
  -- {
  --   "VidocqH/lsp-lens.nvim",
  --   opts = {},
  --   enabled = true,
  -- },
  -- {
  --   "jackguo380/vim-lsp-cxx-highlight",
  -- },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = function(_, opts)
      opts.filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            "node_modules",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      }
    end,
  },
}
