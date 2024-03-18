return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    enabled = false,
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      "folke/trouble.nvim",
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
      "jvgrootveld/telescope-zoxide",
    },
    keys = {
      {
        "<leader>fz",
        "<cmd>Telescope zoxide list<CR>",
        desc = "Find directories",
      },
    },
    opts = function(_, opts)
      local trouble = require "trouble.providers.telescope"
      local fb_actions = require("telescope").extensions.file_browser.actions
      return require("astronvim.utils").extend_tbl(opts, {
        defaults = {
          prompt_prefix = "   ",
          mappings = {
            i = { ["<c-t>"] = trouble.open_with_trouble },
            n = { ["<c-t>"] = trouble.open_with_trouble },
          },
        },
        extensions = {
          undo = {
            -- side_by_side = true,
            -- layout_strategy = "vertical",
            -- layout_config = {
            --   preview_height = 0.8,
            -- },
          },
          file_browser = {
            mappings = {
              i = {
                ["<C-z>"] = fb_actions.toggle_hidden,
              },
              n = {
                z = fb_actions.toggle_hidden,
              },
            },
          },
        },
      })
    end,
    config = function(...)
      require "plugins.configs.telescope"(...)
      local telescope = require "telescope"
      -- telescope.load_extension "fzy_native"
      -- telescope.load_extension "live_grep_args"
      -- telescope.load_extension "bibtex"
      telescope.load_extension "file_browser"
      telescope.load_extension "undo"
      telescope.load_extension "zoxide"
      -- telescope.load_extension "projects"
    end,
    -- highlights = {
    --   -- set highlights for all themes
    --   -- use a function override to let us use lua to retrieve colors from highlight group
    --   -- there is no default table so we don't need to put a parameter for this function
    --   init = function()
    --     local get_hlgroup = require("astronvim.utils").get_hlgroup
    --     -- get highlights from highlight groups
    --     local normal = get_hlgroup "Normal"
    --     local fg, bg = normal.fg, normal.bg
    --     local bg_alt = get_hlgroup("Visual").bg
    --     local green = get_hlgroup("String").fg
    --     local red = get_hlgroup("Error").fg
    --     -- return a table of highlights for telescope based on colors gotten from highlight groups
    --     return {
    --       TelescopeBorder = { fg = bg_alt, bg = bg },
    --       TelescopeNormal = { bg = bg },
    --       TelescopePreviewBorder = { fg = bg, bg = bg },
    --       TelescopePreviewNormal = { bg = bg },
    --       TelescopePreviewTitle = { fg = bg, bg = green },
    --       TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
    --       TelescopePromptNormal = { fg = fg, bg = bg_alt },
    --       TelescopePromptPrefix = { fg = red, bg = bg_alt },
    --       TelescopePromptTitle = { fg = bg, bg = red },
    --       TelescopeResultsBorder = { fg = bg, bg = bg },
    --       TelescopeResultsNormal = { bg = bg },
    --       TelescopeResultsTitle = { fg = bg, bg = bg },
    --     }
    --   end,
    -- },
  },
}
