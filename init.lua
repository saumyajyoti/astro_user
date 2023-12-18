-- local util = require "nvim-lspconfig.lua.lspconfig.util"
local root_files = {
  ".clangd",
  ".clang-tidy",
  ".clang-format",
  "compile_commands.json",
  "compile_flags.txt",
  ".git",
}
local default_capabilities = {
  textDocument = {
    completion = {
      editsNearCursor = true,
    },
  },
  offsetEncoding = { "utf-16" },
}
return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin",     -- remote to use
    channel = "stable",    -- "stable" or "nightly"
    version = "latest",    -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly",    -- branch name (NIGHTLY ONLY)
    commit = nil,          -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil,     -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false,  -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false,     -- automatically quit the current session after a successful update
    remotes = {            -- easily add new remotes to track
      --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
      --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
      --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
    },
  },

  -- Set colorscheme to use
  -- colorscheme = "gruvbox",
  colorscheme = "catppuccin",

  -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  heirline = {
    separators = {
      none = { "", "" },
      left = { "", " " },
      right = { "  ", "" },
      center = { " ", "  " },
      tab = { "", " " },
      breadcrumbs = "  ",
      path = "  ",
    },
  },
  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true,     -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
          -- "lua",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- disable lua_ls formatting capability if you want to use StyLua to format your lua code
        -- "lua_ls",
      },
      timeout_ms = 1000,        -- default format timeout
      filter = function(client) -- fully override the default formatting function
        if client.name == "lua_ls" then return true end
        return true
      end,
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
    setup_handlers = {
      -- add custom handler
      -- clangd = function(_, opts) require("clangd_extensions").setup { server = opts } end,
    },
    config = {
      clangd = {
        capabilities = default_capabilities,
        -- root_dir = function(fname) return "compile_commands.json" end,
      },
    },
  },
  -- plugins = {
  --   "p00f/clangd_extensions.nvim", -- install lsp plugin
  --   {
  --     "williamboman/mason-lspconfig.nvim",
  --     opts = {
  --       ensure_installed = { "clangd" }, -- automatically install lsp
  --     },
  --   },
  -- },

  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    ui = {
      border = "shadow", -- solid", -- "rounded",
    },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },

  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    --   vim.cmd [[
    -- let &shellredir = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    -- let &shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
    -- set shellquote= shellxquote=
    -- ]]
   -- vim.keymap.set("c", "<S-CR>", function()
     -- require("noice").redirect(function() vim.fn.getcmdline() end)
   -- end, { desc = "Redirect Cmdline" })
    --
    vim.api.nvim_create_user_command("Insp", function() require("noice").redirect "Inspect!" end, { nargs = 0 })

    -- vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
    --   border = "round",
    -- })
    --
    -- vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
    --   border = "round",
    -- })
    -- Set up custom filetypes
    -- vim.filetype.add {
    --   extension = {
    --     foo = "fooscript",
    --   },
    --   filename = {
    --     ["Foofile"] = "fooscript",
    --   },
    --   pattern = {
    --     ["~/%.config/foo/.*"] = "fooscript",
    --   },
    -- }
  end,
}
