-- Navigating windows 
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })


vim.keymap.set("n", "<C-Tab>", ":bn<CR>", { noremap = true })
vim.keymap.set("n", "<C-S-Tab>", ":bp<CR>", { noremap = true })


-- Other custom configs 
vim.api.nvim_create_user_command("CdNc", function()
  vim.cmd("cd ~/Projects/nc")
end, {})

vim.api.nvim_create_user_command("CdFl", function()
  vim.cmd("cd ~/Projects/nc/falcons")
end, {})
