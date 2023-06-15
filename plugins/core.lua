-- local utils = require "astronvim.utils"
return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "█████ █████ ████████ ██████ ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ █████    ██    ██████ ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ █████    ██    ██   ██ ██████",
      }
      return opts
    end,
  },

  {
    "nvim-telescope/telescope-fzf-native.nvim",
    enabled = false,
    build =
    "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
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
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "folke/trouble.nvim",
      "nvim-lua/plenary.nvim",
      "debugloop/telescope-undo.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
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
      require "plugins.configs.telescope" (...)
      local telescope = require "telescope"
      -- telescope.load_extension "fzy_native"
      -- telescope.load_extension "live_grep_args"
      -- telescope.load_extension "bibtex"
      telescope.load_extension "file_browser"
      telescope.load_extension "undo"
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
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            "node_modules",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     -- diagnostics = { virtual_text = { prefix = "icons" } },
  --     setup = {
  --       clangd = function(_, opts)
  --         opts.root_dir.root_pattern = { "compile_commands.json" }
  --         -- opts.capabilities.offsetEncoding = { "utf-16" }
  --       end,
  --     },
  --   },
  -- },
  --  ▇ █ ▉ ▊ ▒ ▓ ░ █ ▉ █
  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },
  --
  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  -- By adding to the which-key config and using our helper function you can add more which-key registered bindings
  -- {
  --   "folke/which-key.nvim",
  --   config = function(plugin, opts)
  --     require "plugins.configs.which-key"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- Add bindings which show up as group name
  --     local wk = require "which-key"
  --     wk.register({
  --       b = { name = "Buffer" },
  --     }, { mode = "n", prefix = "<leader>" })
  --   end,
  -- },
}
