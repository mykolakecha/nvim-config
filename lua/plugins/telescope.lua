return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<C-p>", ":Telescope<CR>", { silent = true })
    vim.keymap.set("n", "<Leader>f", ":Telescope fd<CR>", { silent = true })

    vim.keymap.set("n", "<Leader>r", function()
        builtin.buffers({ sort_lastused = true })
    end, { silent = true, desc = "Telescope: Buffers (sorted by last used)" })
  end,
}

