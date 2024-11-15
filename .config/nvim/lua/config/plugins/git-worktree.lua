return {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local worktree = require("git-worktree")
        local job = require("plenary.job")
        local telescope = require("telescope")

        local function is_nrdp()
            return not not (string.find(vim.fn.getcwd(), vim.env.NRDP, 1, true))
        end

        worktree.on_tree_change(function(op, metadata)
            if op == worktree.Operations.Switch then
                print(" ")
            end
        end)

        worktree.on_tree_change(function(op, metadata)
            if op == "create" and is_nrdp() then
                job:new({
                    "git", "submodule", "update"
                }):start()
            end
        end)

        worktree.setup()
        telescope.load_extension("git_worktree")

        vim.keymap.set("n", "<leader>gw", telescope.extensions.git_worktree.git_worktrees, { silent = true })
        vim.keymap.set("n", "<leader>gaw", telescope.extensions.git_worktree.create_git_worktree, { silent = true })
    end
}
