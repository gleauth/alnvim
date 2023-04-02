return {
    {
        "echasnovski/mini.starter",
        version = "*",
        event = "VimEnter",
        config = function()
            require("mini.starter").setup({})
        end
    },
    -- 平滑滚动
    {
        "karb94/neoscroll.nvim",
        event = "VeryLazy",
        config = true,
    },
    -- 文件目录树
    {
        "nvim-neo-tree/neo-tree.nvim",
        lazy = true,
        cmd = "Neotree",
        keys = {
            { "<leader>nc", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo Tree" },
            { "<leader>nf", "<cmd>Neotree float<CR>",  desc = "Open Float Neo Tree" },
        },
        init = function()
            vim.g.neo_tree_remove_legacy_commands = 1
        end,
        opts = {}
    },
    -- 显示滚动条
    {
        "petertriho/nvim-scrollbar",
        event = "VeryLazy",
        config = function()
            local colors = {
                Handle = "#EE9888",
                Search = "#1FC867",
                Error = "#FD6883",
                Warn = "#FFD886",
                Info = "#A9DC76",
                Hint = "#78DCE8",
                Misc = "#AB9DF2"
            }
            require("scrollbar").setup(
                {
                    handle = {
                        -- 滚动条颜色
                        color = colors.Handle
                    },
                    marks = {
                        -- 诊断颜色，需要 LSP 支持
                        Search = { color = colors.Search },
                        Error = { color = colors.Error },
                        Warn = { color = colors.Warn },
                        Info = { color = colors.Info },
                        Hint = { color = colors.Hint },
                        Misc = { color = colors.Misc }
                    },
                    handlers = {
                        gitsigns = true,
                        search = true
                    }
                }
            )
        end
    }
}
