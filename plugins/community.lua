local M = {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  --
  --  Bars
  -- {import = "astrocommunity.bars-and-lines.dropbar-nvim"},
  -- { import = "astrocommunity.bars-and-lines.bufferline-nvim" },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  --
  -- Files
  --
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.project.nvim-spectre" },
  { import = "astrocommunity.debugging.nvim-bqf" },
  { import = "astrocommunity.test.neotest" },
  -- { import = "astrocommunity.syntax.vim-cool" },
  --
  -- MD
  --
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  { import = "astrocommunity.markdown-and-latex.markmap-nvim" },
  --
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
  --
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.neogit" },

  --
  -- indent
  --
  -- { import = "astrocommunity.indent.indent-blankline-nvim" },
  -- { import = "astrocommunity.indent.mini-indentscope" },
  --
  -- Motion
  --
  { import = "astrocommunity.motion.vim-matchup" },
  { import = "astrocommunity.motion.harpoon" },
  { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.motion.mini-move" },
  --
  -- Packs
  --
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.ps1" },
  --
  -- editing
  --
  { import = "astrocommunity.editing-support.treesj" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.text-case-nvim" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.comment-box-nvim" },
  -- { import = "astrocommunity.editing-support.auto-save-nvim" },
  -- { import = "astrocommunity.editing-support.cutlass-nvim" },
  --
  -- { import = "astrocommunity.syntax.vim-cool" },
  -- { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  { import = "astrocommunity.color.headlines-nvim" },
  { import = "astrocommunity.search.sad-nvim" },
  -- { import = "astrocommunity.color.vim-highlighter" },
  -- { import = "astrocommunity.split-and-window.edgy-nvim" },
  -- { import = "astrocommunity.syntax.hlargs-nvim" }
}

return M
