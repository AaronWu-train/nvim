-- plugins/completion.lua
return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip", -- Snippet source
        },
        config = function()
            require("plugins.config.completion") -- Separate config file for nvim-cmp
        end,
    },
    "L3MON4D3/LuaSnip", -- Snippet engine
}
