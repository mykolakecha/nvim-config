
local function set_everforest()
  vim.g.everforest_background = "hard"
  vim.cmd("colorscheme everforest")
end

local function set_github()
  vim.cmd("colorscheme github_light")
end


return {
  {
    "sainnhe/everforest",
  },
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    config = function()

      vim.api.nvim_create_user_command("ToggleTheme", function()
        local current = vim.g.colors_name
        if current == "everforest" then
          set_github()
        else
          set_everforest()
        end
      end, {})

      vim.keymap.set("n", "<Leader>lt", ":ToggleTheme<CR>", { silent = true })

      set_everforest()
    end,
  },
}
