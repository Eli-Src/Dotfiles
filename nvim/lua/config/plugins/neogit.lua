return {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("neogit").setup()

            vim.keymap.set("n", "<leader>gs", "<CMD>above Neogit kind=split_above_all<CR>", { silent = true })
        end,
}
