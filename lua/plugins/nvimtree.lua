return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
		  sync_root_with_cwd = true,
		  update_focused_file = {
			enable = true,
			update_root = true,
		  },
		  view = {
			width = 38,
		  },
		  renderer = {
			group_empty = true,
		  },
		  filters = {
			dotfiles = true,
		  },
		})
    vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>", { silent = true })
  end,
}
