return {
  -- LSP base
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- Optional UI for LSP status (progress in the corner)
      { "j-hui/fidget.nvim", tag = "legacy", opts = {} },
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Basic on_attach function: keymaps, etc.
      local on_attach = function(_, bufnr)
        local map = function(mode, lhs, rhs)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
        end

        -- LSP keybindings
        map("n", "<Leader>jd", vim.lsp.buf.definition)
        map("n", "<Leader>jf", vim.lsp.buf.references)
        map("n", "<Leader>jr", vim.lsp.buf.rename)
        map("n", "K", vim.lsp.buf.hover)
        -- map("n", "<Leader>la", vim.lsp.buf.code_action)
        -- map("n", "<leader>lf", function() vim.lsp.buf.format { async = true } end)
      end

	  vim.keymap.set("n", "<leader>u", function()
	    vim.lsp.buf.code_action({
	      filter = function(action)
		    return action.title:match("Import class")
		  end,
		  apply = true,
	    })
	  end, { desc = "Import class under cursor", buffer = bufnr })

      lspconfig.lua_ls.setup({
        on_attach = on_attach,
      })

      lspconfig.phpactor.setup({
        on_attach = on_attach,
      })

      lspconfig.html.setup({
        on_attach = on_attach,
      })

      lspconfig.ts_ls.setup({
        on_attach = on_attach,
      })
    end,
  },

  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
    config = function()

    end,
  },

  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim", "nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "phpactor", "html" },
        automatic_installation = true,
      })
    end,
  },
}
