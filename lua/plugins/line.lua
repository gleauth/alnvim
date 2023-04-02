return {
    -- buffer 栏
    {
        "akinsho/bufferline.nvim",
        version = "v3.*",
        event = "VeryLazy",
        dependencies = "nvim-web-devicons",
        opts = {
            options = {
                -- 为每个 buffer 都配置一个序数
                numbers = "ordinal",
                -- 使用内置 LSP 进行诊断
                diagnostics = "nvim_lsp",
                -- 分割符样式："slant" | "thick" | "thin"
                -- 如果是透明背景，不推荐使用 slant
                separator_style = "thin",
                -- 显示 LSP 报错图标
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " " or (e == "warning" and " " or "")
                        s = s .. n .. sym
                    end
                    return s
                end,
                offset = {
                    {
                        filetype = "neo-tree",
                        text = "Neo-tree",
                        highlight = "Directory",
                        "text_align",
                    }
                }
            }
        },
        kesy = {
            { "<M-p>",      "<cmd>BufferLineCyclePrev<CR>",  desc = "Goto Prev Buffer" },
            { "<M-n>",      "<cmd>BufferLineCycleNext<CR>",  desc = "Goto Next Buffer" },
            { "<leader>bl", "<cmd>BufferLineCloseLeft<CR>",  desc = "Close Left Buffer" },
            { "<leader>br", "<cmd>BufferLineCloseRight<CR>", desc = "Close Right Buffer" }
        }
    },
    -- 炫酷的状态栏插件
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        dependencies = "nvim-web-devicons",
        config = function()
            require("lualine").setup({
                options = {
                    theme = "onedark",
                    globalstatus = true,
                },
                sections = {
                    lualine_a = { 'mode' },
                    lualine_b = { 'branch', 'diff', 'diagnostics' },
                    lualine_c = { 'filename' },
                    lualine_x = {
                        { 'encoding', 'fileformat', 'filetype' },
                        {
                            require("lazy.status").updates,
                            cond = require("lazy.status").has_updates,
                            color = { fg = "#ff9e64" },
                        },
                    },
                    lualine_y = { 'progress' },
                    lualine_z = { 'location' }
                }
            })
        end
    }
}
