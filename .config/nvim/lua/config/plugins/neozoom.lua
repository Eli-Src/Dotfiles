return {
    "yannick-cw/vimzoom",
    config = function()
        vim.g.vimzoom_no_bar = 0
        vim.keymap.set("n", "<leader>f", "<CMD>Zoom<CR>")
    end,
}
