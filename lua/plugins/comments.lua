return {
    -- 代码注释
    {
        "numToStr/Comment.nvim",
        lazy = true,
        keys = {
            { "gcc", mode = { "n" },      desc = "line comment" },
            { "gbc", mode = { "n" },      desc = "block comment" },
            { "gc",  mode = { "v", "n" }, desc = "visual line comment" },
            { "gb",  mode = { "v", "n" }, desc = "visual block comment" },
            { "gco", mode = { "n" },      desc = "next line comment" },
            { "gcO", mode = { "n" },      desc = "prev line comment" },
            { "gcA", mode = { "n" },      desc = "tail line comment" }
        },
        config = function()
            require("Comment").setup({
                toggler = {
                    -- 切换行注释
                    line = "gcc",
                    --- 切换块注释
                    block = "gbc"
                },
                opleader = {
                    -- 可视和普通模式下的行注释
                    line = "gc",
                    -- 可视和普通模式下的块注释
                    block = "gb"
                },
                extra = {
                    -- 在当前行上方新增行注释
                    above = "gcO",
                    -- 在当前行下方新增行注释
                    below = "gco",
                    -- 在当前行行尾新增行注释
                    eol = "gcA"
                }
            })
        end
    },
    -- TODO注释样式
    {
        "folke/todo-comments.nvim",
        lazy = true,
        cmd = { "TodoTrouble", "TodoTelescope" },
        event = { "BufReadPost", "BufNewFile" },
        opts = {
            keywords = {
                -- alt ： 别名
                FIX = {
                    icon = " ",
                    color = "#DC2626",
                    alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "!" }
                },
                TODO = { icon = " ", color = "#10B981" },
                HACK = { icon = " ", color = "#7C3AED" },
                WARN = { icon = " ", color = "#FBBF24", alt = { "WARNING", "XXX" } },
                PERF = { icon = " ", color = "#FC9868", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
                NOTE = { icon = " ", color = "#2563EB", alt = { "INFO" } }
            }
        }
    }
}
