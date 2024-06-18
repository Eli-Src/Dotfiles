return {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("onedark").setup({
            style = "warmer",
            transparent = true,
        })
        require("onedark").load()
    end,
}

-- return {
--     "ellisonleao/gruvbox.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("gruvbox").setup({
--             transparent_mode = true,
--         })
--         require("gruvbox").load()
--     end,
-- }

-- return {
--     "craftzdog/solarized-osaka.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("solarized-osaka").setup({
--             transparent = true,
--         })
--         require("solarized-osaka").load()
--     end,
-- }
