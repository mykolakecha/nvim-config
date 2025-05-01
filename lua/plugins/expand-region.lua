return {
  "terryma/vim-expand-region",
  keys = {
    { "<C-=>", "<Plug>(expand_region_expand)", mode = "v", desc = "Expand region" },
    { "<C-->", "<Plug>(expand_region_shrink)", mode = "v", desc = "Shrink region" },
  }
}
