local footer = {
  type = "text",
  val = "Saumya",
  opts = {
    position = "center",
    hl = "Number",
  },
}
local header1 = {
  "                                                                       ",
  "🮝▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒🮟   ",
  " 🮝▒▒▒▒▒▒██████🮝███████╗██🮍▒▒▒██╗▒▒▒▒▒███████╗███🮝▒▒██╗██🮍▒▒▒██╗▒▒▒🮟  ",
  "  🮝▒▒▒▒▒██╔══██╗██╔════╝██🮍▒▒▒██║▒▒▒▒▒██╔════╝████🮝▒██║██🮍▒▒▒██║▒▒▒▒🮟 ",
  "   🮝▒▒▒▒██║▒▒██║█████╗▒ ██🮍▒▒🮜██║▒▒█▒▒█████╗▒▒██╔█▒██║██🮍▒▒🮜██║▒▒▒▒▒🮟",
  "   🮞▒▒▒▒██║▒▒██║██╔══╝▒🮟█🮝🮜█🮞▒▒▒▒▒██╔══╝▒▒██║🮟███║█🮝🮜█🮞▒▒▒▒▒🮜",
  "  🮞▒▒▒▒▒██████╝███████╗🮟████🮞▒▒▒▒▒▒███████╗██║▒🮟███║🮟████🮞▒▒▒▒▒🮜 ",
  " 🮞▒▒▒▒▒▒╚═════╝▒╚══════╝▒🮟╚═══🮞▒▒▒▒▒▒▒╚══════╝╚═╝▒▒🮟═══╝▒🮟╚═══🮞▒▒▒▒▒🮜  ",
  "🮞▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒🮜   ",
  "                                                                       ",
}

local header2 = {
  "█████ █████ ████████ ██████ ██████",
  "██   ██ ██         ██    ██   ██ ██    ██",
  "███████ █████    ██    ██████ ██    ██",
  "██   ██      ██    ██    ██   ██ ██    ██",
  "██   ██ █████    ██    ██   ██ ██████",
}

return {
  "goolord/alpha-nvim",
  enabled = true,
  optional = false,
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function()
    local startify = require "alpha.themes.startify"

    local cfgpath = vim.fn.stdpath "config" .. "/lua/user/init.lua"
    startify.section.header.val = header1
    startify.section.header.opts.hl = "Function"
    startify.section.bottom_buttons.val = {
      -- { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      -- startify.button("e", "  New file", "<cmd>ene<CR>"),
      startify.button("SPC f f", "󰈞  Find file"),
      startify.button("SPC f w", "󰊄  Live grep"),
      startify.button("c", "  Configuration", "<cmd>e " .. cfgpath .. "|Neotree show<CR>"),
      startify.button("u", "  Update plugins", "<cmd>AstroUpdatePackages<CR>"),
      startify.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
    }
    startify.section.footer.val = { footer }
    -- startify.config.layout = {
    --   { type = "padding", val = 1 },
    --   startify.section.header,
    --   { type = "padding", val = 2 },
    --   startify.section.top_buttons,
    --   startify.section.mru_cwd,
    --   startify.section.mru,
    --   { type = "padding", val = 1 },
    --   startify.section.bottom_buttons,
    --   footer,
    --   }

    return startify
  end,
  config = function(_, opts)
    require("alpha").setup(opts.config)

    vim.api.nvim_create_autocmd("User", {
      pattern = "LazyVimStarted",
      desc = "Add Alpha dashboard footer",
      once = true,
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
        footer.val = { " ", " ", " ", "AstroNvim loaded " .. stats.count .. " plugins   in " .. ms .. "ms" }

        opts.section.footer.val = { footer }
        -- { " ", " ", " ", "AstroNvim loaded " .. stats.count .. " plugins  in " .. ms .. "ms" }
        -- opts.config.layout.footer.opts.hl = "DashboardFooter"
        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
