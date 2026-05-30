return {
    {
        "chomosuke/typst-preview.nvim",
        version = "1.*",
        ft = "typst",
        opts = {
            follow_cursor = true,
            dependencies_bin = {
                tinymist = "tinymist",
            },
        },
        keys = {
            {
                "<leader>tp",
                "<cmd>TypstPreviewToggle<cr>",
                desc = "Toggle Typst preview",
            },
            {
                "<leader>ts",
                function()
                    require("typst-preview").sync_with_cursor()
                end,
                desc = "Sync Typst preview to cursor",
            },
        },
        config = function(_, opts)
            require("typst-preview").setup(opts)
            vim.lsp.enable("tinymist")
        end,
    },
}
