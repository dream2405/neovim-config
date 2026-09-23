local Snacks = require("snacks")

Snacks.setup({
  bigfile = { enabled = true },
  dashboard = { 
    enabled = true,
    sections = {
      { section = "header" },
      { section = "keys", gap = 1, padding = 1 },
    },
  },

  explorer = {
    enabled = true,
    replace_netrw = true,
  },

  indent = { enabled = true },
  input = { enabled = true },

  notifier = {
    enabled = true,
    timeout = 3000,
  },

  picker = { enabled = true },
  quickfile = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  words = { enabled = true },
})

local map = vim.keymap.set

-- Picker / Explorer
map("n", "<leader><space>", function()
  Snacks.picker.smart()
end, { desc = "Smart Find Files" })

map("n", "<leader>,", function()
  Snacks.picker.buffers()
end, { desc = "Buffers" })

map("n", "<leader>/", function()
  Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "<leader>e", function()
  Snacks.explorer()
end, { desc = "Explorer" })

-- Files
map("n", "<leader>ff", function()
  Snacks.picker.files()
end, { desc = "Find Files" })

map("n", "<leader>fg", function()
  Snacks.picker.git_files()
end, { desc = "Git Files" })

map("n", "<leader>fr", function()
  Snacks.picker.recent()
end, { desc = "Recent Files" })

map("n", "<leader>fc", function()
  Snacks.picker.files({
    cwd = vim.fn.stdpath("config"),
  })
end, { desc = "Find Config File" })

-- Search
map("n", "<leader>sg", function()
  Snacks.picker.grep()
end, { desc = "Grep" })

map({ "n", "x" }, "<leader>sw", function()
  Snacks.picker.grep_word()
end, { desc = "Grep Word / Selection" })

map("n", "<leader>sb", function()
  Snacks.picker.lines()
end, { desc = "Buffer Lines" })

map("n", "<leader>sh", function()
  Snacks.picker.help()
end, { desc = "Help" })

map("n", "<leader>sk", function()
  Snacks.picker.keymaps()
end, { desc = "Keymaps" })

map("n", "<leader>sd", function()
  Snacks.picker.diagnostics()
end, { desc = "Diagnostics" })

-- Git
map("n", "<leader>gb", function()
  Snacks.picker.git_branches()
end, { desc = "Git Branches" })

map("n", "<leader>gl", function()
  Snacks.picker.git_log()
end, { desc = "Git Log" })

map("n", "<leader>gs", function()
  Snacks.picker.git_status()
end, { desc = "Git Status" })

map("n", "<leader>gg", function()
  Snacks.lazygit()
end, { desc = "LazyGit" })

-- Misc
map("n", "<leader>bd", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

map("n", "<leader>cR", function()
  Snacks.rename.rename_file()
end, { desc = "Rename File" })

map("n", "<leader>z", function()
  Snacks.zen()
end, { desc = "Zen Mode" })

map("n", "<leader>.", function()
  Snacks.scratch()
end, { desc = "Scratch" })

map("n", "<leader>n", function()
  Snacks.notifier.show_history()
end, { desc = "Notification History" })

map("n", "<leader>un", function()
  Snacks.notifier.hide()
end, { desc = "Dismiss Notifications" })

map({ "n", "t" }, "<C-/>", function()
  Snacks.terminal()
end, { desc = "Terminal" })

map({ "n", "t" }, "<C-_>", function()
  Snacks.terminal()
end, { desc = "Terminal" })
