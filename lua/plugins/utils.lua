return {
    -- 非活动代码变暗
    {
        "folke/twilight.nvim",
        lazy = true,
        keys = {
            { "<leader>twd", "<cmd>TwilightDisable<CR>", desc = "Disable Twilight" },
            { "<leader>twe", "<cmd>TwilightEnable<CR>",  desc = "Enable Twilight" },
            { "<leader>twl", "<cmd>Twilight<CR>",        desc = "Open Twilight" }
        },
        opts = {}
    },
    -- 禅模式
    {
        "folke/zen-mode.nvim",
        lazy = true,
        cmd = "ZenMode",
        keys = {
            { "<leader>mz", "<cmd>ZenMode<CR>", desc = "Open Zen Mode" }
        },
        opts = {}
    },
    -- 正则表达式解释器
    {
        "bennypowers/nvim-regexplainer",
        lazy = true,
        keys = {
            { "gR", mode = { "n", "v" }, desc = "Toggle Regexplainer" },
            { "gS", mode = { "n", "v" }, desc = "Show Regexplainer" },
            { "gH", mode = { "n", "v" }, desc = "Hide Regexplainer" },
            { "gL", mode = { "n", "v" }, desc = "Show_split Regexplainer" },
            { "gP", mode = { "n", "v" }, desc = "Show_popup Regexplainer" }
        },
        opts = {
            mappings = {
                toggle = "gR",
                show = "gS",
                hide = "gH",
                show_split = "gL",
                show_popup = "gP",
            }
        }
    },
    -- 优化buffer关闭
    {
        "famiu/bufdelete.nvim",
        lazy = true,
        keys = {
            { "<C-q>", "<cmd>Bdelete!<CR>", desc = "Close Buffer" }
        }
    },
    -- 显示一个弹出窗口，其中包含您开始输入的命令的可能键绑定
    {
        "folke/which-key.nvim",
        lazy = true,
        event = "VeryLazy",
        opts = {}
    },
    -- 完善旧的 quickfix 窗口
    {
        "kevinhwang91/nvim-bqf",
        lazy = true,
        ft = "qf",
        opts = {
            auto_enable = true
        }
    },
    -- 显示缩进线
    {
        "lukas-reineke/indent-blankline.nvim",
        lazy = true,
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            -- 显示当前所在区域
            show_current_context = true,
            -- 显示当前所在区域的开始位置
            show_current_context_start = true,
            -- 显示行尾符
            show_end_of_line = true,
            space_char_blankline = " ",
        }
    }
}
