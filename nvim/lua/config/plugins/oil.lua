return {
    "stevearc/oil.nvim",
    ---@module "oil"
    ---@type oil.SetupOpts
    opts = {},
    config = function()
        require("oil").setup({
            default_file_explorer = true,
            columns = {
                "permissions",
                "size",
                "mtime",
            },
            cleanup_delay_ms = 300000,
            constrain_cursor = "name",
            watch_for_changes = true,
            keymaps = {
                ["g?"] = "actions.show_help",
                ["<CR>"] = "actions.select",
                ["<C-s>"] = {
                    callback = function()
                        local dir = require("oil").get_current_dir()
                        local entry = require("oil").get_cursor_entry()
                        ---@diagnostic disable-next-line: undefined-field
                        if entry == nil or entry.type ~= "file" then
                            return
                        end

                        ---@diagnostic disable-next-line: undefined-field
                        local path = dir .. entry.name
                        local cwd = vim.fn.getcwd() .. "/"
                        path = path:gsub(cwd, "")
                        require("harpoon.mark").add_file(path)
                    end,
                    desc = "harpoon file",
                    mode = "n",
                },
                ["<C-h>"] = false,
                ["<C-t>"] = false,
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = false,
                ["<C-l>"] = false,
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["`"] = false,
                ["~"] = false,
                ["gs"] = "actions.change_sort",
                ["gx"] = false,
                ["g."] = "actions.toggle_hidden",
                ["g\\"] = false
            },
            view_options = {
                show_hidden = true,
                natural_order = false,
                case_insensitive = false,
            },
        })

        vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
    end
}
