return {
    {
        "hrsh7th/nvim-cmp",
        event = { "InsertEnter" },
        dependencies = {
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            -- "SirVer/ultisnips",
            -- "quangnguyen30192/cmp-nvim-ultisnips",
            "honza/vim-snippets",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- "rafamadriz/friendly-snippets",
        },
        config = function()
            local cmp = require("cmp")
            local cmp_select = { behavior = cmp.SelectBehavior.Select }

            -- require("luasnip.loaders.from_vscode").lazy_load()

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                        -- vim.fn["UltiSnips#Anon"](args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-m>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-n>'] = cmp.mapping.scroll_docs(4),
                    ["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
                    ["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
                    ["<C-l>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                sources = cmp.config.sources({
                    { name = "path" },
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    -- { name = 'ultisnips' },

                }, {
                    { name = "buffer" },
                })
            })
        end,
    },
}
