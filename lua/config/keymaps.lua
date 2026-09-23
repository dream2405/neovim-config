local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

map("n", "<leader>w", "<cmd>w<CR>", {
  desc = "Save",
})

map("n", "<leader>q", "<cmd>q<CR>", {
  desc = "Quit",
})

-- Buffers
map("n", "[b", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })
map("n", "]b", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bp", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer" })
map("n", "<leader>bn", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close Other Buffers" })
