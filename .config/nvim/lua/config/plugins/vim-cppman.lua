return {
    "skywind3000/vim-cppman",
    ft = "cpp",
    config = function()
        local function cppman()
            local old_isk = vim.bo.iskeyword
            vim.bo.iskeyword = vim.bo.iskeyword .. ",:"
            local str = vim.fn.expand("<cword>")
            vim.bo.iskeyword = old_isk
            vim.cmd('silent! Cppman ' .. str)
            vim.cmd.only()
        end

        vim.keymap.set('n', 'K', cppman)
    end,
}
