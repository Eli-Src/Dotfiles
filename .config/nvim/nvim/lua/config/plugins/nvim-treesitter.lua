return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "vimdoc", "lua", "c", "python", "go",
                "typescript", "tsx", "javascript", "css", "html"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
            -- enable autotagging (w/ nvim-ts-autotag plugin)
            autotag = {
                enable = true,
                filetypes = {
                    "html", "javascript", "typescript",
                    "javascriptreact", "typescriptreact",
                    "tsx", "jsx",
                    "svelte", "vue", "templ", "astro",
                    "xml", "markdown"
                }
            }
        })
    end,
}
