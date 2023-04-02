return {
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function ()
            require("onedark").setup({
                style = "dark",
                ending_tildes = true,
                code_style = {
                    comments = "italic",
                    keywords = "bold",
                    functions = "bold"
                    -- zsh
                    -- lua
                    -- fish
                    -- cpp
                    -- c
                    -- cmake
                    -- make
                    -- ninja
                    -- python
                    -- markdown
                    -- yaml
                    -- toml
                    -- css
                    -- html
                    -- json
                    -- java
                    -- javascript
                    -- typescript
                    -- vim
                    -- bash
                    -- sh
                    -- org
                    -- norg
                    -- ini
                    -- help
                    -- text
                    -- sql
                }
            })
            require("onedark").load()
        end
    }
}
