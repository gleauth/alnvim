return {
    -- 主题
    {
        "rmehri01/onenord.nvim",
        priority = 1000,
        config = function()
            require("onenord").setup({
                theme = "dark",
                fade_nc = true,
                styles = {
                    comments = "italic",
                    strings = "bold",
                    keywords = "bold",
                    functions = "bold",
                    variables = "bold",
                },
                inverse = {
                    match_paren = true,
                }
            })
        end
    }
}

