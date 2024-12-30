return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-live-grep-args.nvim" , version = "^1.0.0" },
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                layout_config = {
                    width = 0.9,
                    height = 0.9
                },
                mappings = {
                    i = {
                        ["<CR>"] = actions.select_default,
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        -- ["<C-m>"] = actions.preview_scrolling_up,
                        -- ["<C-n>"] = actions.preview_scrolling_down,
                    }
                }
            }
        })
        telescope.load_extension("fzf");
        telescope.load_extension("live_grep_args")

        vim.keymap.set("n", "<leader>pf", builtin.find_files)
        vim.keymap.set("n", "<leader>ps", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
        vim.keymap.set("n", "<leader>pw", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
    end
}
