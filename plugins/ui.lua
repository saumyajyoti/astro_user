local utils = require "astronvim.utils"
-- local icons = require("nvim-nonicons")
return {
  -- {
  --   "akinsho/bufferline.nvim",
  --   event = "VeryLazy",
  --   after = "catppuccin",
  --   opts = function()
  --     require("bufferline").setup {
  --       highlights = require("catppuccin.groups.integrations.bufferline").get(),
  --     }
  --   end,
  -- },
  -- -- { import = "lualine", enabled = true },
  -- {
  --   "rebelot/heirline.nvim",
  --   optional = true,
  --   opts = function(_, opts)
  --     opts.tabline = nil
  --     -- opts.statusline = nil
  --   end,
  -- },
  -- {
  --   "yamatsum/nvim-nonicons",
  --   dependencies = { "nvim-tree/nvim-web-devicons" },
  --   config = true,
  --   lazy = false,
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
  {
    "lukas-reineke/indent-blankline.nvim",
    -- enabled = false,
    opts = {
      space_char_blankline = " ",
      -- char_highlight_list = {
      --   "IndentBlanklineIndent1",
      --   "IndentBlanklineIndent2",
      --   "IndentBlanklineIndent3",
      --   "IndentBlanklineIndent4",
      --   "IndentBlanklineIndent5",
      --   "IndentBlanklineIndent6",
      -- },
    },
  },

  -- noice
  {
    "rcarriga/nvim-notify",
    init = false,
    -- config = true,
    keys = {
      {
        "<leader>ux",
        function() require("notify").dismiss { silent = true, pending = true } end,
        desc = "Dismiss all Notifications",
      },
    },
    opts = function(_, opts)
      -- local nonicons_extention = require("nvim-nonicons.extentions.nvim-notify")

      opts.stages = "fade" -- fade_in_slide_out",
      opts.timeout = 3000
      -- opts.icons = nonicons_extention.icons
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    cond = not vim.g.neovide,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      cmdline = { view = "cmdline" },
      messages = { view_search = false },
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        progress = { enabled = true },
        hover = { enabled = true, silent = true },
        signature = { enabled = false },
      },
      routes = {
        { filter = { event = "msg_show", find = "%d+L,%s%d+B" },       opts = { skip = true } }, -- skip save notifications
        { filter = { event = "msg_show", find = "^%d+ more lines$" },  opts = { skip = true } }, -- skip paste notifications
        { filter = { event = "msg_show", find = "^%d+ fewer lines$" }, opts = { skip = true } }, -- skip delete notifications
        { filter = { event = "msg_show", find = "^%d+ lines yanked" }, opts = { skip = true } }, -- skip yank notifications
        { filter = { event = "msg_show", find = "deprecated" },        opts = { skip = true } }, -- skip nvim deperecated notifications
      },
      presets = {
        long_message_to_split = true,
        command_palette = false,
        bottom_search = true, -- use a classic bottom cmdline for search
        lsp_doc_border = true,
        inc_rename = true,
      },
    },
    init = function() vim.g.lsp_handlers_enabled = false end,
  },
  {
    "nvim-zh/colorful-winsep.nvim",
    config = true,
    event = { "WinNew" },
  },
  -- {
  --   "yorickpeterse/nvim-window",
  --   config = true,
  --   keys = {
  --     { "<leader>w", function() require("nvim-window").pick() { silent = true } end, desc = "Pick Window" },
  --   },
  -- },
}
