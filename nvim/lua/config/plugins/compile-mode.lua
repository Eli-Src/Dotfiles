return {
    "ej-shafran/compile-mode.nvim",
    tag = "v5.*",
    branch = "latest",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "m00qek/baleia.nvim", tag = "v1.3.0" },
    },
    config = function()
        ---@type CompileModeOpts
        vim.g.compile_mode = {
            baleia_setup = true,
            default_command = "",
            error_locus_highlight = true
        }

        vim.api.nvim_create_augroup("CompileMode", { clear = true })
        vim.api.nvim_create_autocmd("User", {
            pattern = "CompilationFinished",
            group = "CompileMode",
            callback = function(event)
                vim.cmd("wincmd w")
            end,
        })
        vim.keymap.set("n", "<leader>zz", "<CMD>below Compile<CR>")
    end,
}
