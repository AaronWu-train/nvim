-- options.lua

vim.cmd("filetype plugin indent on") -- Enable filetype detection, plugins, and indentation

-- Line number settings
vim.opt.cursorline = true
vim.opt.cursorlineopt = "both"
vim.opt.number = true          -- Absolute line numbers
vim.opt.relativenumber = true  -- Relative line numbers

vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cindent = true

-- Indentation settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4     -- Inserts 4 spaces for each tab
vim.opt.scrolloff = 5
vim.opt.smartindent = true  -- Automatically smart-indents new lines
vim.opt.expandtab = true

vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.mouse = "a"
vim.opt.encoding = "utf-8"
vim.opt.updatetime = 500    -- Faster completion

vim.opt.splitbelow = true   -- Set the split window to be below the current w
