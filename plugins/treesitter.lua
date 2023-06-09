return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    if opts.ensure_installed ~= "all" then
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "bash",
        "markdown",
        "markdown_inline",
        "regex",
        "vim",
        "c",
        "cpp",
        "c_sharp",
        "css",
        "html",
        "lua",
        "diff",
        "git_config",
        "python",
        "toml",
        "yaml",
        "vim",
        "json",
        "javascript",
        "cmake",
      })
    end
  end,
}
