return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- auto-update parsers
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "php",
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "bash",
        "markdown",
        "yaml",
      },

      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, 
      },

      indent = {
        enable = true, 
      },
    })
  end,
}
