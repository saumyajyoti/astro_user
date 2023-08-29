return {
    custom_highlights = function(colors)
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
            LazySpecial = { style = {} },
            LazyProgressDone = { fg = colors.blue, style = { "nocombine" } },
            LazyProgressTodo = { fg = colors.overlay0, style = { "nocombine" } },

            IndentBlanklineContextChar = { fg = colors.surface2 },
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
            -- Current
            -- TelescopeSelection = { bg = colors.surface0 },
            -- TelescopePromptCounter = { fg = colors.mauve, style = {} },
            -- TelescopePromptPrefix = { bg = colors.surface0 },
            -- TelescopePromptNormal = { bg = colors.surface0 },
            -- TelescopeResultsNormal = { bg = colors.mantle },
            TelescopePreviewNormal = { bg = colors.crust },
            -- TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
            -- TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
            TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
            -- TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
            -- TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
            -- TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },

            -- IndentBlanklineChar = { fg = colors.surface0 },
            -- IndentBlanklineContextChar = { fg = colors.surface2 },
            GitSignsChange = { fg = colors.peach },
            -- Blamer = { fg = colors.overlay1, bg = colors.base },
            -- NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
            -- NvimTreeExecFile = { fg = colors.text },
            Function = { fg = colors.green },
            ["@function.macro"] = { fg = colors.mauve },
            Type = { fg = colors.blue },
            ["@type.builtin"] = { fg = colors.blue },
            Structure = { fg = colors.teal },
            Comment = { fg = colors.overlay1 },
            cTypedef = { fg = colors.pink, style = { "italic" } },
            cDefine = { fg = colors.pink, style = { "italic" } },
            cStructure = { fg = colors.yellow },
            StorageClass = { fg = colors.pink, style = { "italic" } },
            cStorageclass = { fg = colors.pink, style = { "italic" } },
            PreProc = { fg = colors.sky, style = { "italic", "nocombine" } },
            Keyword = { fg = colors.maroon },
            Conditional = { fg = colors.red },
            Repeat = { fg = colors.red },
            ["@keyword.return"] = { fg = colors.flamingo, style = { "italic", "nocombine" } },
            ["@parameter"] = { fg = colors.subtext0, style = { "italic" } },
            ["@property"] = { fg = colors.subtext1 },
            WinBar = { fg = colors.overlay2, bg = colors.mantle },
            -- TabLineSel = { bg = colors.pink },
            -- CmpBorder = { fg = colors.surface2 },
            --  Pmenu = { bg = C.none },
            MatchParen = { fg = colors.lavender, bg = colors.surface0, style = {} },
        }
    end,
    styles = {
        comments = { "italic", "nocombine" },
        conditionals = { "italic" },
        loops = { "italic", "nocombine" },
        functions = { "bold", "italic" },
        keywords = { "italic", "nocombine" },
        strings = {},
        variables = { "nocombine" },
        numbers = {},
        booleans = { "italic" },
        properties = {},
        types = {},
        operators = {},
    },

    highlight_overrides = {
        --   all = function(colors)
        --     return {
        --       -- Comment = { fg = colors.flamingo },
        --     }
        --   end,
    }
}
