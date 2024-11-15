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
--     "thimc/gruber-darker.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("gruber-darker").setup({
--             -- OPTIONAL
--             -- transparent = true, -- removes the background
--             -- underline = false, -- disables underline fonts
--             -- bold = false, -- disables bold fonts
--         })
--         vim.cmd.colorscheme("gruber-darker")
--     end,
-- }
