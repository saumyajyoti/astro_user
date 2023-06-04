return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- {import = "astrocommunity.bars-and-lines.dropbar-nvim"},
  { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.syntax.vim-cool" },
  -- { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- { import = "astrocommunity.startup.fsplash-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.mini-move" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.python" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.yaml" },
  -- { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.colorscheme.catppuccin",                      enabled = true },
  -- {
  --   -- further customize the options set by the community
  --   "catppuccin",
  --   opts = {
  --     flavour = "macchiato", -- latte, frappe, macchiato, mocha
  --     background = {
  --       -- :h background
  --       light = "latte",
  --       dark = "mocha",
  --     },
  --     transparent_background = false,
  --     show_end_of_buffer = true, -- show the '~' characters after the end of buffer
  --     term_colors = false,
  --     dim_inactive = {
  --       enabled = false,
  --       shade = "dark",
  --       percentage = 0.15,
  --     },
  --     no_italic = false,    -- Force no italic
  --     no_bold = false,      -- Force no bold
  --     no_underline = false, -- Force no underline
  --     styles = {
  --       comments = { "italic" },
  --       conditionals = { "italic" },
  --       loops = { "italic" },
  --       functions = { "bold" },
  --       keywords = { "italic" },
  --       strings = {},
  --       variables = {},
  --       numbers = {},
  --       booleans = {},
  --       properties = {},
  --       types = {},
  --       operators = {},
  --     },
  --     color_overrides = {},
  --     custom_highlights = function(colors)
  --       return {
  --         Comment = { fg = colors.Lavender },
  --         keywords = { fg = colors.flamingo },
  --         -- conditionals = { fg = colors.Green },
  --         TabLineSel = { bg = colors.pink },
  --         CmpBorder = { fg = colors.surface2 },
  --         --  Pmenu = { bg = C.none },
  --       }
  --     end,
  --     highlight_overrides = {
  --       all = function(colors)
  --         return {
  --           -- Comment = { fg = colors.green },
  --           -- NvimTreeNormal = { fg = colors.none },
  --           CmpBorder = { fg = "#3e4145" },
  --         }
  --       end,
  --     },
  --     -- custom_highlights = {},
  --     integrations = {
  --       sandwich = false,
  --       noice = true,
  --       mini = true,
  --       leap = true,
  --       markdown = true,
  --       neotest = true,
  --       cmp = true,
  --       overseer = true,
  --       lsp_trouble = true,
  --       ts_rainbow2 = true,
  --     },
  --   },
  -- },
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
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },

  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
