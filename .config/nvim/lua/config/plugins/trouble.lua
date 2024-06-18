return {
    "folke/trouble.nvim",
    opts = {
        icons = {
            indent = {
                middle = " ",
                last = " ",
                top = " ",
                ws = "│  ",
            },
        },
        modes = {
            diagnostics = {
                groups = {
                    { "filename", format = "{basename:Title} {count}" },
                },
            },
        },
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
    },
}

        -- trouble.setup({
        --     icons = false,
        --     indent_lines = false,
        --     signs = {
        --         error = "E",
        --         warning = "W",
        --         hint = "H",
        --         information = "I"
        --     },
        --     use_diagnostic_signs = false
        -- })
        --
        -- vim.keymap.set("n", "[t", function()
        --     trouble.next({ skip_groups = true, jump = true });
        -- end)
        --
        -- vim.keymap.set("n", "]t", function()
        --     trouble.previous({ skip_groups = true, jump = true });
        -- end)
