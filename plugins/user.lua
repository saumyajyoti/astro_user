return {

  { "gbprod/yanky.nvim" },
  --   { "p00f/clangd_extensions.nvim" },
  {
    "p00f/clangd_extensions.nvim",
    init = function()
      -- load clangd extensions when clangd attaches
      local augroup = vim.api.nvim_create_augroup("clangd_extensions", { clear = true })
      vim.api.nvim_create_autocmd("LspAttach", {
        group = augroup,
        desc = "Load clangd_extensions with clangd",
        callback = function(args)
          if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
            require "clangd_extensions"
            vim.api.nvim_del_augroup_by_id(augroup)
          end
        end,
      })
    end,
  },
  { "max397574/better-escape.nvim" },
  { "ekickx/clipboard-image.nvim" },
  -- {
  --   "yorickpeterse/nvim-window",
  --   event = "VeryLazy",
  --   Keys = {},
  --   opts = {
  --     border = "rounded",
  --   },
  -- },
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
