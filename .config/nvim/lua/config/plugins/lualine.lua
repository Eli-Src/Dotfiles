return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local custom_onedark = require("lualine.themes.onedark")

        custom_onedark.normal.a.fg = "#A8A8A8" -- Normal mode foreground
        custom_onedark.normal.a.bg = "#303030" -- Normal mode background
        custom_onedark.insert.a.fg = "#A8A8A8" -- Insert mode foreground
        custom_onedark.insert.a.bg = "#303030" -- Insert mode background
        custom_onedark.visual.a.fg = "#A8A8A8" -- Visual mode foreground
        custom_onedark.visual.a.bg = "#303030" -- Visual mode background
        custom_onedark.command.a.fg = "#A8A8A8" -- Command mode foreground
        custom_onedark.command.a.bg = "#303030" -- Command mode background

        custom_onedark.normal.b.bg = "#303030" -- Statusline background
        custom_onedark.normal.c.bg = "#303030" -- Statusline background

        require("lualine").setup({
            options = {
                icons_enabled = false,
                theme = custom_onedark,
                globalstatus = true,
                section_separators = "",
                component_separators = "",
                disabled_filetypes = { statusline = { "dashboard", "lazy", "alpha" } },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "filename" },
                lualine_c = { "branch", "diff" },
                lualine_x = {},
                lualine_y = {},
                lualine_z = {"encoding"},
            },
        })
    end,
}
