return {
    -- 模糊查找
    {
        "nvim-telescope/telescope.nvim",
        lazy = true,
        branch = '0.1.x',
        cmd = "Telescope",
        dependencies = {
            { "nvim-telescope/telescope-ui-select.nvim",    lazy = true }, --neovim核心内容可以填充到telescope
            { "nvim-telescope/telescope-file-browser.nvim", lazy = true }, --支持的文件和文件夹的同步创建、删除、重命名和移动
            { "nvim-telescope/telescope-frecency.nvim",     lazy = true }, --在编辑历史中选择文件时提供智能优先级排序(以频率和新近度排序)
        },
        config = function()
            local trouble = require("trouble.providers.telescope")
            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<C-h>"] = "which_key",
                            ["<c-t>"] = trouble.open_with_trouble,
                        },
                        n = { ["<c-t>"] = trouble.open_with_trouble },
                    }
                },
                pickers = {},
                extensions = {
                    file_browser = {
                        theme = "ivy",
                        mappings = {
                            ["i"] = {},
                            ["n"] = {},
                        },
                    },
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    }
                }
            }
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("notify")
            require("telescope").load_extension('file_browser')
            require("telescope").load_extension("frecency")
            require('telescope').load_extension("projects")
        end,
        keys = {
            { "<leader>tsw", "<cmd>Telescope find_files theme=ivy<CR>", desc = "Find Files" },
            { "<leader>tsg", "<cmd>Telescope live_grep theme=ivy<CR>",  desc = "Grep Word" },
            { "<leader>tsb", "<cmd>Telescope buffers theme=ivy<CR>",    desc = "Find Buffers" },
            { "<leader>tsh", "<cmd>Telescope help_tags theme=ivy<CR>",  desc = "Find Help Tags" },
            { "<leader>tso", "<cmd>Telescope oldfiles theme=ivy<CR>",   desc = "Find Old Files" },
            { "<leader>tsm", "<cmd>Telescope marks theme=ivy<CR>",      desc = "Find Marks" },
            { "<leader>tsn", "<cmd>Telescope notify theme=ivy<CR>",     desc = "Find Notify History" },
            { "<leader>tsp", "<cmd>Telescope projects<CR>",             desc = "Find Projects" },
            { "<leader>tse", "<cmd>Telescope file_browser<CR>",         desc = "Find File browser Tree" },
            { "<leader>tsr", "<cmd>Telescope frecency theme=ivy<CR>",   desc = "Find Frecency" }
        }
    }
}
