return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("gitsigns").setup({
      signs = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "-" },
        topdelete    = { text = "-" },
        changedelete = { text = "-" },
        untracked    = { text = "?" },
      },
      signcolumn = true,  -- Toggle with :Gitsigns toggle_signs
      numhl      = false, -- Toggle with :Gitsigns toggle_numhl
      linehl     = false, -- Toggle with :Gitsigns toggle_linehl
      watch_gitdir = {
        interval = 1000,
        follow_files = true
      },
      attach_to_untracked = true,
    })
  end,
}
