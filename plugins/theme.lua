local colors_gruvbox = {
  dark0_hard = "#1d2021",
  dark0 = "#282828",
  dark0_soft = "#32302f",
  dark1 = "#3c3836",
  dark2 = "#504945",
  dark3 = "#665c54",
  dark4 = "#7c6f64",
  light0_hard = "#f9f5d7",
  light0 = "#fbf1c7",
  light0_soft = "#f2e5bc",
  light1 = "#ebdbb2",
  light2 = "#d5c4a1",
  light3 = "#bdae93",
  light4 = "#a89984",
  bright_red = "#fb4934",
  bright_green = "#b8bb26",
  bright_yellow = "#fabd2f",
  bright_blue = "#83a598",
  bright_purple = "#d3869b",
  bright_aqua = "#8ec07c",
  bright_orange = "#fe8019",
  -- common
  neutral_red = "#cc241d",
  neutral_green = "#98971a",
  neutral_yellow = "#d79921",
  neutral_blue = "#458588",
  neutral_purple = "#b16286",
  neutral_aqua = "#689d6a",
  neutral_orange = "#d65d0e",
  -- light theme
  faded_red = "#9d0006",
  faded_green = "#79740e",
  faded_yellow = "#b57614",
  faded_blue = "#076678",
  faded_purple = "#8f3f71",
  faded_aqua = "#427b58",
  faded_orange = "#af3a03",

  gray = "#928374",
}

return {
  {
    -- further customize the options set by the community
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 150,
    opts = {
      -- flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = {
        -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = true, -- show the '~' characters after the end of buffer
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false, -- Force no italic
      no_bold = false, -- Force no bold
      no_underline = false, -- Force no underline
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "bold" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = { "bold" },
        booleans = { "italic" },
        properties = {},
        types = { "bold" },
        operators = {},
      },
      -- Mocha - Labels	Hex
      --
      -- Rosewater	#f5e0dc
      -- Flamingo	#f2cdcd
      -- Pink	#f5c2e7
      -- Mauve	#cba6f7
      -- Red	#f38ba8
      -- Maroon	#eba0ac
      -- Peach	#fab387
      -- Yellow	#f9e2af
      -- Green	#a6e3a1
      -- Teal	#94e2d5
      -- Sky	#89dceb
      -- Sapphire	#74c7ec
      -- Blue	#89b4fa
      -- Lavender	#b4befe
      -- Text	#cdd6f4
      -- Subtext1	#bac2de
      -- Subtext0	#a6adc8
      -- Overlay2	#9399b2
      -- Overlay1	#7f849c
      -- Overlay0	#6c7086
      -- Surface2	#585b70
      -- Surface1	#45475a
      -- Surface0	#313244
      -- Base	#1e1e2e
      -- Mantle	#181825
      -- Crust	#11111b

      color_overrides = {
        mocha = {
          -- gruvbox -- alternate (https://github.com/thanhvule0310) -- Catppuccin
          --
          rosewater = "#ffa1a7", -- "#EA6962", -- #F5E0DC
          flamingo = colors_gruvbox.bright_red, -- "#F38BA8", -- #F2CDCD
          -- pink =                                  "#D3869B", -- #F5C2E7
          mauve = colors_gruvbox.neutral_purple, -- "#D3869B", -- #CBA6F7
          red = "#EA6962", -- #F38BA8
          -- maroon = "#EA6962",                                -- #EBA0AC
          peach = colors_gruvbox.faded_yellow, -- "#c68e6b", -- #FAB387
          yellow = colors_gruvbox.bright_yellow, -- "#D8A657", -- #F9E2AF
          green = "#A9B665", -- #A6E3A1
          teal = "#89B482", -- #94E2D5
          sky = colors_gruvbox.bright_aqua, -- "#89B482", -- #89DCEB
          sapphire = colors_gruvbox.neutral_blue, -- "#89B482", -- #74C7EC
          blue = colors_gruvbox.bright_blue, -- "#7DAEA3",                   -- #87B0F9
          -- lavender = "#7DAEA3", -- #B4BEFE
          text = colors_gruvbox.light1, -- "#D4BE98", -- #C6D0F5
          subtext1 = colors_gruvbox.light0_soft, -- "#BDAE8B", -- #B3BCDF
          subtext0 = colors_gruvbox.light2, -- "#A69372", -- #A1A8C9
          overlay2 = colors_gruvbox.light3, -- "#8C7A58", -- #8E95B3
          overlay1 = colors_gruvbox.light4, -- "#735F3F", -- #7B819D
          overlay0 = colors_gruvbox.gray, -- "#806234", -- #696D86
          surface2 = colors_gruvbox.dark3, -- "#6E7477", --#4B4F51", -- #565970
          surface1 = colors_gruvbox.dark1, -- "#2A2D2E", -- #43465A
          surface0 = colors_gruvbox.dark0_soft, --  "#232728", -- #313244
          base = colors_gruvbox.dark0, -- "#1D2021", -- #1E1E2E
          mantle = colors_gruvbox.dark0_hard, -- "#191C1D",          -- #181825
          crust = "#151819", -- #11111B
        },
      },
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.surface0 },
          FloatBorder = { fg = colors.overlay0 },
          VertSplit = { bg = colors.base, fg = colors.surface1 },
          CursorLineNr = { fg = colors.mauve, style = { "bold" } },
          LineNr = { fg = colors.overlay0 },
          Pmenu = { bg = colors.mantle, fg = "" },
          PmenuSel = { bg = colors.surface0, fg = colors.subtext0 },
          TelescopeSelection = { bg = colors.surface0 },
          TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
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
          Type = { fg = colors.green },
          Structure = { fg = colors.green },
          Comment = { fg = colors.surface2 },
          cTypedef = { fg = colors.pink, style = { "italic" } },
          cDefine = { fg = colors.pink, style = { "italic" } },
          cStructure = { fg = colors.yellow },
          StorageClass = { fg = colors.pink, style = { "italic" } },
          cStorageclass = { fg = colors.pink, style = { "italic" } },
          PreProc = { fg = colors.teal, style = { "italic" } },
          Keyword = { fg = colors.pink },
          Conditional = { fg = colors.red },
          Repeat = { fg = colors.red },
          ["@keyword.return"] = { fg = colors.red, style = { "italic" } },
          ["@parameter"] = { style = {} },
          WinBar = { fg = colors.overlay1, bg = colors.mantle },
          -- TabLineSel = { bg = colors.pink },
          -- CmpBorder = { fg = colors.surface2 },
          --  Pmenu = { bg = C.none },
        }
      end,
      highlight_overrides = {
        all = function(colors)
          return {
            -- Comment = { fg = colors.flamingo },
            -- NvimTreeNormal = { fg = colors.none },
            -- CmpBorder = { fg = "#3e4145" },
          }
        end,
      },
      -- custom_highlights = {},
      integrations = {
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
      },
    },
  },
  -- { import = "astrocommunity.colorscheme.gruvbox-nvim" },
  -- {
  --   "gruvbox.nvim",
  --   opts = {
  --     undercurl = true,
  --     underline = true,
  --     bold = true,
  --     italic = {
  --       strings = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = false,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     contrast = "",  -- can be "hard", "soft" or empty string
  --     palette_overrides = {},
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = false,
  --   },
  -- },
}
