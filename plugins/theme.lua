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
      no_italic = false,    -- Force no italic
      no_bold = false,      -- Force no bold
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
        types = {},
        operators = {},
      },
      -- Mocha - Labels	Hex
      --
      -- Rosewater	#f5e0dc
      -- Flamingo 	#f2cdcd
      -- Pink     	#f5c2e7
      -- Mauve    	#cba6f7
      -- Red	      #f38ba8
      -- Maroon	    #eba0ac
      -- Peach	    #fab387
      -- Yellow   	#f9e2af
      -- Green    	#a6e3a1
      -- Teal     	#94e2d5
      -- Sky      	#89dceb
      -- Sapphire 	#74c7ec
      -- Blue	      #89b4fa
      -- Lavender  	#b4befe
      -- Text     	#cdd6f4
      -- Subtext1 	#bac2de
      -- Subtext0 	#a6adc8
      -- Overlay2	  #9399b2
      -- Overlay1	  #7f849c
      -- Overlay0	  #6c7086
      -- Surface2	  #585b70
      -- Surface1	  #45475a
      -- Surface0	  #313244
      -- Base   	  #1e1e2e
      -- Mantle 	  #181825
      -- Crust  	  #11111b

      -- gruvbox mix material
      --   \ 'bg_dim':           ['#1b1b1b',   '233'],
      --   \ 'bg0':              ['#282828',   '235'],
      --   \ 'bg1':              ['#32302f',   '236'],
      --   \ 'bg2':              ['#32302f',   '236'],
      --   \ 'bg3':              ['#45403d',   '237'],
      --   \ 'bg4':              ['#45403d',   '237'],
      --   \ 'bg5':              ['#5a524c',   '239'],
      --   \ 'bg_statusline1':   ['#32302f',   '236'],
      --   \ 'bg_statusline2':   ['#3a3735',   '236'],
      --   \ 'bg_statusline3':   ['#504945',   '240'],
      --   \ 'bg_diff_green':    ['#34381b',   '22'],
      --   \ 'bg_visual_green':  ['#3b4439',   '22'],
      --   \ 'bg_diff_red':      ['#402120',   '52'],
      --   \ 'bg_visual_red':    ['#4c3432',   '52'],
      --   \ 'bg_diff_blue':     ['#0e363e',   '17'],
      --   \ 'bg_visual_blue':   ['#374141',   '17'],
      --   \ 'bg_visual_yellow': ['#4f422e',   '94'],
      --   \ 'bg_current_word':  ['#3c3836',   '237']
      --
      --   \ 'fg0':              ['#e2cca9',   '223'],
      --   \ 'fg1':              ['#e2cca9',   '223'],
      --   \ 'red':              ['#f2594b',   '167'],
      --   \ 'orange':           ['#f28534',   '208'],
      --   \ 'yellow':           ['#e9b143',   '214'],
      --   \ 'green':            ['#b0b846',   '142'],
      --   \ 'aqua':             ['#8bba7f',   '108'],
      --   \ 'blue':             ['#80aa9e',   '109'],
      --   \ 'purple':           ['#d3869b',   '175'],
      --   \ 'bg_red':           ['#db4740',   '167'],
      --   \ 'grey0':            ['#7c6f64',   '243'],
      --   \ 'grey1':            ['#928374',   '245'],
      --   \ 'grey2':            ['#a89984',   '246'],
      --
      color_overrides = {
        mocha = {
          -- Gruvbox_mix-medium from https://github.com/sainnhe/gruvbox-material
          -- gruvbox -- alternate (https://github.com/thanhvule0310) -- Catppuccin
          --                                         current    alt     catp    gruv_mat
          rosewater = "#ffc6be",                 -- #ffc6be  #EA6962  #F5E0DC
          flamingo = "#fb4934",                  -- #fb4934  #F38BA8  #F2CDCD
          pink = "#f4bce4",                      -- "#ffd3e2", --          #D3869B  #F5C2E7
          mauve = "#d3869b",                     --          #D3869B" #CBA6F7
          red = "#f2594b",                       --          #EA6962  #F38BA8
          maroon = "#fe8019",                    --          #EA6962  #EBA0AC
          peach = "#b57614",                     -- #b57614  #c68e6b  #FAB387
          yellow = "#e9b143",                    -- #e9b143  #D8A657  #F9E2AF
          green = "#b0b846",                     --                   #A6E3A1
          teal = "#8ec07c",                      --                   #94E2D5
          sky = "#83a598",                       --          #89B482  #89DCEB
          sapphire = "#689d6a",                  -- #8ec07c         #89B482  #74C7EC
          blue = "#458588",                      --          #7DAEA3  #87B0F9
          lavender = "#b16286",                  -- "#b39ddb", --                   #B4BEFE
          text = colors_gruvbox.light1,          -- #ebdbb2  #D4BE98  #C6D0F5
          subtext1 = colors_gruvbox.light0_soft, -- #f2e5bc         #BDAE8B  #B3BCDF
          subtext0 = colors_gruvbox.light2,      -- #d5c4a1         #A69372  #A1A8C9
          overlay2 = colors_gruvbox.light3,      -- #bdae93  #8C7A58  #8E95B3
          overlay1 = colors_gruvbox.light4,      -- #a89984  #735F3F  #7B819D
          overlay0 = colors_gruvbox.gray,        -- #928374  #806234  #696D86
          surface2 = colors_gruvbox.dark3,       -- "#6E7477"#4B4F51",  #565970
          surface1 = colors_gruvbox.dark1,       -- "#2A2D2E", --           #43465A
          surface0 = colors_gruvbox.dark0_soft,  --  "#232728", --     #313244
          base = "#282828",                      -- "#1D2021", --               #1E1E2E
          mantle = "#1d2021",                    -- "#191C1D",           #181825
          crust = "#1b1b1b",                     --                                       #11111B
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
          Function = { fg = colors.lavender, style = { "bold", "italic" } },
          Type = { fg = colors.blue },
          Structure = { fg = colors.teal },
          Comment = { fg = colors.surface2 },
          cTypedef = { fg = colors.pink, style = { "italic" } },
          cDefine = { fg = colors.pink, style = { "italic" } },
          cStructure = { fg = colors.yellow },
          StorageClass = { fg = colors.pink, style = { "italic" } },
          cStorageclass = { fg = colors.pink, style = { "italic" } },
          PreProc = { fg = colors.maroon, style = { "italic" } },
          Keyword = { fg = colors.flamingo },
          Conditional = { fg = colors.red },
          Repeat = { fg = colors.red },
          ["@keyword.return"] = { fg = colors.flamingo, style = { "italic" } },
          ["@parameter"] = { fg = colors.overlay1, style = { "italic" } },
          ["@property"] = { fg = colors.yellow },
          WinBar = { fg = colors.overlay2, bg = colors.mantle },
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
