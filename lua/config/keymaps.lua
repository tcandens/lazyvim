-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("n", "<leader>x", function()
  Snacks.bufdelete()
end, { desc = "Close Buffer" })

map("n", "<c-\\>", function()
  Snacks.terminal()
end, { desc = "Terminal (cwd)" })
map("t", "<c-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })

map("n", "<leader>fw", function()
  Snacks.picker.grep()
end, { desc = "Grep" })

map("n", "cc", function()
  local cc = require("codecompanion")
  cc.toggle()
end, { desc = "CodeCompanion Chat" })
