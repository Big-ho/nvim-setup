local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    spec = {
        import = "plugins",
    },
    defaults = {
        lazy = false,
        version = false,
    },
    install = {
        missing = true,
        colorscheme = { "cyberdream" },
    },
    checker = { enabled = true },
    dev = {
        path = vim.fn.expand("~/git"),
        fallback = true,
    },
    ui = {
        title = " lazy.nvim 💤",
        border = "rounded",
        pills = false,
    },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "tarPlugin",
                "tohtml",
                "zipPlugin",
                "netrwPlugin",
                "tutor",
            },
        },
    },
})
