-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--

vim.api.nvim_create_autocmd("FileType", {
    pattern = "cpp",
    callback = function()
        vim.keymap.set("n", "<F5>", function()
            vim.cmd(":w") -- 儲存檔案
            -- 打開終端並進入插入模式
            vim.cmd(
                "belowright split | resize 10 | term g++ % -o %:r.out -g -DDEBUG -DAaW -I/usr/local/include -std=c++17 -Wall && echo -----compiled----- && ./%:r.out"
            )
            vim.cmd("startinsert") -- 進入插入模式
        end)
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "c",
    callback = function()
        vim.keymap.set("n", "<F5>", function()
            vim.cmd(":w") -- 儲存檔案
            vim.cmd(
                "belowright split | resize 10 | term gcc % -o %:r.out -g -DDEBUG -DAaW -I/usr/local/include -Wall && echo -----compiled----- && ./%:r.out"
            )
            vim.cmd("startinsert") -- 進入插入模式
        end)
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.keymap.set("n", "<F5>", function()
            vim.cmd(":w") -- 儲存檔案
            vim.cmd("belowright split | resize 10 | term python %")
            vim.cmd("startinsert") -- 進入插入模式
        end)
    end,
})
