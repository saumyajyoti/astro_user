return {
  {
    -- further customize the options set by the community
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 150,
    opts = function()
      local opts = {}
      local THEME_NAME = "gruvcat"

      local colors_overrides = THEME_NAME ~= "catppuccin" and require("user.plugins.catppuccin." .. THEME_NAME) or {}
      -- flavour = "macchiato", -- latte, frappe, macchiato, mocha
      opts.background = {
        -- :h background
        light = "latte",
        dark = "mocha",
      }
      opts.transparent_background = false
      opts.show_end_of_buffer = true -- show the '~' characters after the end of buffer
      opts.term_colors = false
      opts.dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      }
      opts.no_italic = false    -- Force no italic
      opts.no_bold = false      -- Force no bold
      opts.no_underline = false -- Force no underline
      opts.styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "italic", "nocombine" },
        functions = { "bold", "italic" },
        keywords = { "italic", "nocombine" },
        strings = {},
        variables = { "nocombine" },
        numbers = { "bold" },
        booleans = { "italic" },
        properties = {},
        types = {},
        operators = {},
      }
      opts.color_overrides = colors_overrides
      opts.custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.surface0 },
          FloatBorder = { fg = colors.overlay0 },
          VertSplit = { bg = colors.base, fg = colors.surface1 },
          FoldColumn = { fg = colors.overlay0, bg = colors.mantle },
          LineNr = { fg = colors.overlay0, bg = colors.mantle },
          CursorLineNr = { fg = colors.mauve, bg = colors.surface0, style = {} },
          CursorLineSign = { bg = colors.surface0 },
          CursorLineFold = { bg = colors.surface0 },
          -- SignColumn = { bg = colors.mantle },
          Pmenu = { bg = colors.mantle, fg = "" },
          PmenuSel = { bg = colors.surface0, fg = colors.subtext0 },
          -- astro nvchad theme
          -- TelescopeBorder = { fg = bg_alt, bg = bg },
          -- TelescopeNormal = { bg = bg },
          -- TelescopePreviewBorder = { fg = bg, bg = bg },
          -- TelescopePreviewNormal = { bg = bg },
          -- TelescopePreviewTitle = { fg = bg, bg = green },
          -- TelescopePromptBorder = { fg = bg_alt, bg = bg_alt },
          -- TelescopePromptNormal = { fg = fg, bg = bg_alt },
          -- TelescopePromptPrefix = { fg = red, bg = bg_alt },
          -- TelescopePromptTitle = { fg = bg, bg = red },
          -- TelescopeResultsBorder = { fg = bg, bg = bg },
          -- TelescopeResultsNormal = { bg = bg },
          -- TelescopeResultsTitle = { fg = bg, bg = bg },


          TelescopeSelection = { bg = colors.surface0 },
          TelescopePromptCounter = { fg = colors.mauve, style = {} },
          TelescopePromptPrefix = { bg = colors.surface0 },
          TelescopePromptNormal = { bg = colors.surface0 },
          TelescopeResultsNormal = { bg = colors.mantle },
          TelescopePreviewNormal = { bg = colors.crust },
          TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
          TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
          TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
          TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
          TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
          TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },

          -- IndentBlanklineChar = { fg = colors.surface0 },
          -- IndentBlanklineContextChar = { fg = colors.surface2 },
          GitSignsChange = { fg = colors.peach },
          -- Blamer = { fg = colors.overlay1, bg = colors.base },
          -- NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
          -- NvimTreeExecFile = { fg = colors.text },
          Function = { fg = colors.sky },
          ["@function.macro"] = { fg = colors.mauve },
          Type = { fg = colors.blue },
          ["@type.builtin"] = { fg = colors.blue },
          Structure = { fg = colors.teal },
          Comment = { fg = colors.surface2 },
          cTypedef = { fg = colors.pink, style = { "italic" } },
          cDefine = { fg = colors.pink, style = { "italic" } },
          cStructure = { fg = colors.yellow },
          StorageClass = { fg = colors.pink, style = { "italic" } },
          cStorageclass = { fg = colors.pink, style = { "italic" } },
          PreProc = { fg = colors.maroon, style = { "italic", "nocombine" } },
          Keyword = { fg = colors.flamingo },
          Conditional = { fg = colors.red },
          Repeat = { fg = colors.red },
          ["@keyword.return"] = { fg = colors.flamingo, style = { "italic", "nocombine" } },
          ["@parameter"] = { fg = colors.overlay1, style = { "italic" } },
          ["@property"] = { fg = colors.yellow },
          WinBar = { fg = colors.overlay2, bg = colors.mantle },
          -- TabLineSel = { bg = colors.pink },
          -- CmpBorder = { fg = colors.surface2 },
          --  Pmenu = { bg = C.none },
          MatchParen = { fg = colors.lavender, bg = colors.surface0, style = {} },
        }
      end
      opts.highlight_overrides = {
        all = function(colors)
          return {
            -- Comment = { fg = colors.flamingo },
          }
        end,
      }
      -- custom_highlights = {},
      opts.integrations = {
        alpha = true,
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
        mason = true,
        neotree = true,
        notify = true,
        which_key = true,
        treesitter = true,
        -- treesitter_context = true,
        aerial = true,
        semantic_tokens = true,
        -- symbols_outline = true,
        telescope = true,
        dap = { enabled = true, enable_ui = true },
        gitsigns = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },
      }
      return opts
    end,
  },
}
