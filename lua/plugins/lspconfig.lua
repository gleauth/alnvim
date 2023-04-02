return {
    -- LSP 基础服务
    {
        "neovim/nvim-lspconfig",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            {
                "williamboman/mason-lspconfig.nvim",
                dependencies = { "mason.nvim" },
                opts = {
                    ensure_installed = { "lua_ls", "pylsp", "bashls", "vimls" },
                    automatic_installation = false,
                }
            }
        }
    }
}
