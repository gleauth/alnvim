-- 设置leader
vim.g.mapleader         = ";"
vim.g.maplocalleader    = ","
-- 防止包裹
vim.opt.wrap            = false
-- 默认新窗口在右和下
vim.opt.splitright      = true
vim.opt.splitbelow      = true
-- 行号显示 绝对行号和相对行号
vim.o.number            = true
vim.o.relativenumber    = true
-- 显示标尺
vim.o.ruler             = true
-- 无操作时候交换文件写入磁盘等待的时间
vim.o.updatetime        = 100
-- 高亮当前文本行
vim.o.cursorline        = true
-- 等待按键时长的时间
vim.o.timeoutlen        = 500
-- 外部修改时自动加载
vim.opt.autowrite       = true
vim.opt.autoread        = true
-- 退出时提示确认
vim.opt.confirm         = true
-- 编码设置和检测
vim.o.fileencoding      = "utf-8"
vim.o.fileencodings     = "utf-8,ucs-bom,utf-16,utf-32,gb18030,gbk,gb2312,latin1"
-- 显示左侧图标指示列
vim.wo.signcolumn       = "yes"
-- 搜索设置
vim.opt.ignorecase      = true
vim.opt.smartcase       = true
vim.opt.incsearch       = true
vim.opt.hlsearch        = true
-- 拼写建议
vim.opt.spell           = true
vim.opt.spelllang       = {'en_us'}
-- 鼠标支持
vim.opt.mouse:append("a")
-- 启用系统剪切板
vim.opt.clipboard:append("unnamedplus")
-- 缓存文件设置
vim.opt.backup          = false
vim.opt.writebackup     = false
vim.opt.swapfile        = false
-- 显示特殊字符
vim.opt.list            = true
-- 空格占用以.显示
vim.opt.listchars       = "space:·,tab:··,eol:↴"
-- complete plus
vim.o.wildmenu          = true
-- 终端24位色彩支持
vim.opt.termguicolors   = true
-- 设置缩进
vim.opt.autoindent      = true
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.softtabstop     = 4
vim.opt.expandtab       = true
vim.opt.shiftround      = true
-- 插入括号时短暂跳转到另一半括号
vim.o.showmatch         = true
-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap         = "<,>,[,]"
-- 补全最多显示16行
vim.o.pumheight         = 16
-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode          = false
-- redrawtime
vim.opt.redrawtime      = 10000
-- 语言
vim.o.langmenu          = "en_US.UTF-8"
-- 开启folding
vim.wo.foldmethod       = "expr"
vim.wo.foldexpr         = "nvim_treesitter#foldexpr()"
vim.wo.foldlevel        = 99
vim.o.foldcolumn        = '1' -- '0' is not bad
vim.o.foldlevelstart    = 99
vim.o.foldenable        = true
