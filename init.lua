vim.g.mapleader = ","

-- Load lazy.nvim (clone if needed)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins from lua/plugins/init.lua
require("lazy").setup("plugins")

-- Load custom mapping
require("mappings")


-- General vim configs
vim.cmd("syntax on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

vim.opt.guifont = "FiraCode Nerd Font:h12"

vim.opt.shell = "zsh"
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.tabstop = 4
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.ruler = true
vim.opt.linespace = 4
vim.opt.linebreak = true
vim.opt.clipboard = "unnamedplus"
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.opt.wrap = false


-- Autosave all buffers on focus lost
vim.api.nvim_create_autocmd("FocusLost", {
  pattern = "*",
  command = "wa",
})


-- Alter where splits appear
vim.opt.splitright = true
vim.opt.splitbelow = true


-- ------------------

vim.keymap.set("n", "<leader>u", function()
  vim.lsp.buf.code_action({
    filter = function(action)
      return action.title:match("Import class")
    end,
    apply = true,
  })
end, { desc = "Import class under cursor", buffer = bufnr })
