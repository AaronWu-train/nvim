return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup({
            size = 20, 
            open_mapping = [[<C-/>]],
            hide_numbers = true,
            shade_filetypes = {},
            shade_terminals = true,
            shading_factor = 2,
            start_in_insert = true, 
            persist_size = true,
            direction = "float", 
            close_on_exit = true,
            shell = vim.o.shell,
        })
    end
}
