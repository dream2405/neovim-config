local function gh(repo)
  return "https://github.com/" .. repo
end

vim.pack.add({
  gh("folke/snacks.nvim"),
  gh("nvim-mini/mini.icons"),
  gh("nvim-tree/nvim-web-devicons"),
  gh("akinsho/bufferline.nvim"),
  gh("nvim-lualine/lualine.nvim"),
})
