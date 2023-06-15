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
        booleans = { "bold" },
        properties = {},
        types = { "bold" },
        operators = {},
      },
      color_overrides = {
        mocha = {
          -- rosewater = "#EA6962", -- #F5E0DC
          flamingo = "#F38BA8", -- #F2CDCD
          -- pink = "#D3869B",     -- #F5C2E7
          -- mauve = "#D3869B", -- #CBA6F7
          red = "#EA6962", -- #F38BA8
          -- maroon = "#EA6962", -- #EBA0AC
          peach = "#c68e6b", -- #FAB387
          -- yellow = "#D8A657", -- #F9E2AF
          green = "#A9B665", -- #A6E3A1
          teal = "#89B482", -- #94E2D5
          -- sky = "#89B482", -- #89DCEB
          -- sapphire = "#89B482", -- #74C7EC
          blue = "#7DAEA3", -- #87B0F9
          -- lavender = "#7DAEA3", -- #B4BEFE
          text = "#D4BE98", -- #C6D0F5
          subtext1 = "#BDAE8B", -- #B3BCDF
          subtext0 = "#A69372", -- #A1A8C9
          overlay2 = "#8C7A58", -- #8E95B3
          overlay1 = "#735F3F", -- #7B819D
          overlay0 = "#806234", -- #696D86
          surface2 = "#4B4F51", -- #565970
          surface1 = "#2A2D2E", -- #43465A
          surface0 = "#232728", -- #313244
          base = "#1D2021", -- #1E1E2E
          mantle = "#191C1D", -- #181825
          crust = "#151819", -- #11111B
        },
      },
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.surface1 },
          FloatBorder = { fg = colors.overlay0 },
          VertSplit = { bg = colors.base, fg = colors.surface1 },
          CursorLineNr = { fg = colors.mauve, style = { "bold" } },
          LineNr = { fg = colors.overlay1 },
          -- Pmenu = { bg = colors.crust, fg = "" },
          -- PmenuSel = { bg = colors.surface0, fg = "" },
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
          Keyword = { fg = colors.pink },
          Conditional = { fg = colors.red },
          Repeat = { fg = colors.red },
          ["@keyword.return"] = { fg = colors.red, style = { "italic" } },
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
