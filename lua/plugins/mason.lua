return {
    {
        "williamboman/mason.nvim",
        lazy = true,
        cmd = { "Mason", "MasonInstall", "MasonUninstall", "MasonLog" },
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    }
}
