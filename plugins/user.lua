return {

  { "gbprod/yanky.nvim" },
  { "nanotee/zoxide.vim" },
  --   { "p00f/clangd_extensions.nvim" },
  {
    "p00f/clangd_extensions.nvim",
    init = function()
      -- load clangd extensions when clangd attaches
      local augroup = vim.api.nvim_create_augroup("clangd_extensions", { clear = true })
      vim.api.nvim_create_autocmd("LspAttach", {
        group = augroup,
        desc = "Load clangd_extensions with clangd",
        callback = function(args)
          if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
            require "clangd_extensions"
            vim.api.nvim_del_augroup_by_id(augroup)
          end
        end,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts) opts.inlay_hints = { enabled = true } end,
  },
  { "max397574/better-escape.nvim" },
  { "ekickx/clipboard-image.nvim" },
  { "dstein64/nvim-scrollview" },
  {
    "nvimdev/lspsaga.nvim",
    config = function() require("lspsaga").setup {} end,
    dependencies = {
      { "nvim-treesitter/nvim-treesitter" }, -- optional
      { "nvim-tree/nvim-web-devicons" }, -- optional
    },
  },
  {
    "dnlhc/glance.nvim",
    enabled = false,
    optional = false,
    config = function()
      local glance = require "glance"
      local actions = glance.actions

      glance.setup {
        height = 18, -- Height of the window
        zindex = 45,

        -- By default glance will open preview "embedded" within your active window
        -- when `detached` is enabled, glance will render above all existing windows
        -- and won't be restiricted by the width of your active window
        detached = true,

        preview_win_opts = { -- Configure preview window options
          cursorline = true,
          number = true,
          wrap = true,
        },
        border = {
          enable = false, -- Show window borders. Only horizontal borders allowed
          top_char = "―",
          bottom_char = "―",
        },
        list = {
          position = "right", -- Position of the list window 'left'|'right'
          width = 0.33, -- 33% width relative to the active window, min 0.1, max 0.5
        },
        theme = { -- This feature might not work properly in nvim-0.7.2
          enable = true, -- Will generate colors for the plugin based on your current colorscheme
          mode = "auto", -- 'brighten'|'darken'|'auto', 'auto' will set mode based on the brightness of your colorscheme
        },
        mappings = {
          list = {
            ["j"] = actions.next, -- Bring the cursor to the next item in the list
            ["k"] = actions.previous, -- Bring the cursor to the previous item in the list
            ["<Down>"] = actions.next,
            ["<Up>"] = actions.previous,
            ["<Tab>"] = actions.next_location, -- Bring the cursor to the next location skipping groups in the list
            ["<S-Tab>"] = actions.previous_location, -- Bring the cursor to the previous location skipping groups in the list
            ["<C-u>"] = actions.preview_scroll_win(5),
            ["<C-d>"] = actions.preview_scroll_win(-5),
            ["v"] = actions.jump_vsplit,
            ["s"] = actions.jump_split,
            ["t"] = actions.jump_tab,
            ["<CR>"] = actions.jump,
            ["o"] = actions.jump,
            ["l"] = actions.open_fold,
            ["h"] = actions.close_fold,
            ["<leader>l"] = actions.enter_win "preview", -- Focus preview window
            ["q"] = actions.close,
            ["Q"] = actions.close,
            ["<Esc>"] = actions.close,
            ["<C-q>"] = actions.quickfix,
            -- ['<Esc>'] = false -- disable a mapping
          },
          preview = {
            ["Q"] = actions.close,
            ["<Tab>"] = actions.next_location,
            ["<S-Tab>"] = actions.previous_location,
            ["<leader>l"] = actions.enter_win "list", -- Focus list window
          },
        },
        hooks = {},
        folds = {
          fold_closed = "",
          fold_open = "",
          folded = true, -- Automatically fold list on startup
        },
        indent_lines = {
          enable = true,
          icon = "│",
        },
        winbar = {
          enable = true, -- Available strating from nvim-0.8+
        },
      }
    end,
  },
  {
    "ray-x/navigator.lua",
    enabled = false,
    event = "AstroFile",
    dependencies = {
      { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
      { "neovim/nvim-lspconfig" },
    },
  },
  {
    "rmagatti/goto-preview",
    enabled = false,
    event = "VeryLazy",
    dependencies = "nvim-telescope/telescope.nvim",
    keys = {
      {
        "gpd",
        function() require("goto-preview").goto_preview_definition {} end,
        { noremap = true },
        desc = "Code Definition Preview",
      },
      {
        "gpi",
        function() require("goto-preview").goto_preview_implementation {} end,
        { noremap = true },
      },
      {
        "gpc",
        function() require("goto-preview").close_all_win() end,
        { noremap = true },
      },
      {
        "gpr",
        function() require("goto-preview").goto_preview_references {} end,
        { noremap = true },
      },
    },
    opts = {
      width = 78,
      height = 15,
      default_mappings = false,
      opacity = 10,
      focus_on_open = true, -- Focus the floating window when opening it.
      -- dismiss_on_move = true, -- Dismiss the floating window when moving the cursor.
      post_open_hook = function(_, win)
        vim.api.nvim_win_set_config(win, {
          border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
        })
        local scope = { scope = "local", win = win }
        vim.api.nvim_set_option_value("spell", false, scope)
        vim.api.nvim_set_option_value("signcolumn", "no", scope)
        vim.keymap.set("n", "<Esc>", "<cmd>quit<CR>")
      end,
    },
    -- config = function() require("goto-preview").setup {} end,
  },
  -- {
  --   "yorickpeterse/nvim-window",
  --   event = "VeryLazy",
  --   Keys = {},
  --   opts = {
  --     border = "rounded",
  --   },
  -- },
  -- { "shellRaining/hlchunk.nvim", event = { "UIEnter" } },
  -- { "nvim-treesitter/nvim-treesitter-context" },
  -- {
  --   "anuvyklack/windows.nvim",
  --   dependencies = {
  --     "anuvyklack/middleclass",
  --     "anuvyklack/animation.nvim"
  --   },
  --   config = function()
  --     vim.o.winwidth = 10
  --     vim.o.winminwidth = 10
  --     vim.o.equalalways = false
  --     require('windows').setup()
  --   end
  -- },
}
