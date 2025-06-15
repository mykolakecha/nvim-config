return {
  "numToStr/Comment.nvim",
  config = function()
	require('Comment').setup()

	vim.keymap.set('n', '<C-/>', function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })
	vim.keymap.set('v', '<C-/>', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { noremap = true, silent = true })
  end,
}
