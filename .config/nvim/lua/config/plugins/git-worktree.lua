return {
    "ThePrimgeaen/git-worktree.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local worktree = require("git-worktree")
        local job = require("plenary.job")
        worktree.setup()

        local function is_nrdp()
            return not not (string.find(vim.fn.getcwd(), vim.env.NRDP, 1, true))
        end

        worktree.on_tree_change(function(op, metadata)
            if op == worktree.Operations.Switch then
                print("Switched from " .. metadata.prev_path .. " to " .. metadata.path)
            end

            if op == "create" and is_nrdp() then
                job:new({
                    "git", "submodule", "update"
                }):start()
            end
        end)

        require("telescope").load_extension("git_worktree")
    end
}
