return {
    --光标行号模式指示器
    {
        "mawkler/modicator.nvim",
        init = function ()
            vim.o.cursorline = true
            vim.o.number = true
            vim.o.termguicolors = true
        end,
        event = {"BufReadPost","BufNewFile"},
        opts = {}
    }
}
