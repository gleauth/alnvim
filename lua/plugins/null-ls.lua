return {
    {
        "jose-elias-alvarez/null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        init = function()
            vim.keymap.set("n", "<leader>ni", "<cmd>NullLsInfo<CR>", { desc = "Show Null-ls Info" })
        end,
        config = function()
            local null_ls = require("null-ls")
            local diagnostics = null_ls.builtins.diagnostics
            local sources = {
                -- Diagnostics
                diagnostics.pylint, --python
                diagnostics.zsh,    --zsh
            }
            null_ls.setup({
                sources = sources,
                border = "rounded",
                debug = true,
                diagnostics_format = "[#{c}] #{m} (#{s})",
            })
        end
    }
}
