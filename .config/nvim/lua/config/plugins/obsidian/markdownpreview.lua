return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
        vim.g.mkdp_images_path = "~/Obsidian-Vault/Attachments"
    end,
    keys = {
        "<C-e>", { "<cmd>MarkdownPreviewToggle<cr>", mode = "n" }
    }
}
