return {
  "sindrets/diffview.nvim",
  config = function()
	vim.keymap.set('n', '<Leader>gd', ":DiffviewOpen<CR>", { silent = true })
	vim.keymap.set('n', '<Leader>gc', ":DiffviewClose<CR>", { silent = true })
	vim.keymap.set('n', '<Leader>gr', ":DiffviewRefresh<CR>", { silent = true })
  end,
}

