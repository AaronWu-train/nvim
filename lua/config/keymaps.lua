-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "{<CR>", "{<CR>}<ESC>O")
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "MM", "<ESC>$a")
vim.keymap.set("i", "NN", "<ESC>0i")
vim.keymap.set("n", "m", "<ESC>$")
vim.keymap.set("n", "n", "<ESC>0")
vim.keymap.set("n", "<TAB>", "i<TAB>")
vim.keymap.set("n", "<F12>", ":r ~/codes/main.cpp<CR> ggdd19j")
vim.keymap.set("n", "<C-a>", "ggVG")
vim.keymap.set("v", "<C-c>", '"+y')
