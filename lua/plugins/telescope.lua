return {
  "nvim-telescope/telescope.nvim",
  config = function()
    vim.keymap.set("n", "<C-p>", ":Telescope<CR>", { silent = true })
    vim.keymap.set("n", "<Leader>r", ":Telescope buffers<CR>", { silent = true })
    vim.keymap.set("n", "<Leader>f", ":Telescope fd<CR>", { silent = true })
  end,
}

