return {
    -- 快速跳转
    {
        "phaazon/hop.nvim",
        branch = "v2",
        lazy = true,
        keys = {
            { "<leader>hw", "<cmd>HopWord<CR>",      desc = "Search And Jump Word" },
            { "<leader>hl", "<cmd>HopLine<CR>",      desc = "Search And Jump Line" },
            { "<leader>hc", "<cmd>HopChar1<CR>",     desc = "Search And Jump Char(input 1 char)" },
            { "<leader>hd", "<cmd>HopChar2<CR>",     desc = "Search And Jump Char(input 2 char)" },
            { "<leader>ht", "<cmd>HopLineStart<CR>", desc = "Show Each Line 1st Non-blanke Char And Jump" },
            { "<leader>hv", "<cmd>HopVertical<CR>",  desc = "Show Cursor Local Char As Datum Jump" },
            { "<leader>hr", "<cmd>HopPattern<CR>",   desc = "Default Neovim Search And Jump Mix" },
            { "<leader>ha", "<cmd>HopAnywhere<CR>",  desc = "Jump AnyWhere" }
        },
        opts = {}
    },
    -- 单词或符号快速取反意
    {
        "AndrewRadev/switch.vim",
        lazy = true,
        cmd = { "Switch", "SwitchExpend", "SwitchReverse" },
        keys = {
            { "<leader>sh", "<cmd>Switch<CR>", desc = "Switch Word" }
        },
        init = function()
            vim.g.switch_custom_definitions = "push_words"
        end,
        config = function()
            local switch_words = {
                { "true",    "false" },
                { "on",      "off" },
                { "yes",     "no" },
                { "disable", "enable" },
                { "+",       "-" },
                { ">",       "<" },
                { "=",       "!=" },
                { "*",       "/" },
                { "left",    "right" },
                { "up",      "down" },
                { "front",   "rear" },
                { "quick",   "slow" },
                { "out",     "in" },
                { "input",   "output" },
                { "and",     "or" },
                { "||",      "&&" },
            }
            -- enable Enable ENABLE
            -- 定义增加单词的容器
            local push_words = {}
            for _, value in ipairs(switch_words) do
                local w1, w2 = value[1], value[2]
                -- 全小写
                table.insert(push_words, value)
                -- 全大写
                table.insert(push_words, { string.upper(w1), string.upper(w2) })
                -- 首字母大写，%l 代表小写字母，只取第一个
                w1, _ = string.gsub(w1, "^%l", string.upper)
                w2, _ = string.gsub(w2, "^%l", string.upper)
                table.insert(push_words, { w1, w2 })
            end
        end
    },
    -- 文本字符替换
    {
        "nvim-pack/nvim-spectre",
        lazy = true,
        keys = {
            {"<leader>so","<cmd>lua require('spectre').open()<CR>",desc = "Open Spectre"},
            {"<leader>sw","<cmd>lua require('spectre').open_visual({select_word=true})<CR>",desc = "Open Visual Select Word"},
            {"<leader>sf","viw:lua require('spectre').open_file_search()<CR>",desc = "Open File Search"},
            {"<leader>sh",mode = "v",desc = "Open Visual Mode"}
        },
        config = function ()
            require("spectre").setup({
                mapping = {
                    ['toggle_line'] = {
                        map = "<leader>sd",
                    },
                    ['enter_file'] = {
                        map = "<leader>sg",
                    },
                    ["send_to_qf"] = {
                        map = "<leader>sq",
                    },
                    ['replace_cmd'] = {
                        map = "<leader>sn",
                    },
                    ['show_option_menu'] = {
                        map = "<leader>sm",
                    },
                    ['run_current_replace'] = {
                        map = "<leader>sc",
                    },
                    ['run_replace'] = {
                        map = "<leader>sa",
                    },
                    ['change_view_mode'] = {
                    map = "<leader>sv",
                    },
                    ['change_replace_sed'] = {
                        map = "ss",
                    },
                    ['change_replace_oxi'] = {
                        map = "<leader>sx",
                    },
                    ['toggle_live_update']={
                        map = "<leader>su",
                    },
                    ['toggle_ignore_case'] = {
                        map = "<leader>si",
                    },
                    ['toggle_ignore_hidden'] = {
                        map = "<leader>se",
                    },
                    ['resume_last_search'] = {
                        map = "<leader>sb",
                    },
                }
            })
            vim.keymap.set("v","<leader>sh","<esc>:lua require('spectre').open_visual()<CR>")
        end
    },
    -- 修改定界符
    {
        "kylechui/nvim-surround",
        version = "*",
        lazy = true,
        keys = {
            {"ys",mode = {"n","x"},desc = "Add surround"},
            {"ds",mode = {"n","x"},desc = "Delete surround"},
            {"cs",mode = {"n","x"},desc = "change quotes"},
        },
        config = true
    }
}
