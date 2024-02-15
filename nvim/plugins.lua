local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "eslint-lsp",
                "typescript-language-server",
                "tailwindcss-language-server",
                "pyright",
                "emmet-language-server",
                "css-lsp",
                "html-lsp"
            }
        }
    },
    {
        "windwp/nvim-ts-autotag",
        ft = {
            "typescriptreact",
            "javascriptreact",
            "tsx", "vue", "astro",
            "html", "svelte"
        },
        config = function()
            require("nvim-ts-autotag").setup()
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function()
            local opts = require "plugins.configs.treesitter"
            opts.ensure_installed = {
                "lua",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "css",
            }
            return opts
        end
    },
    {
        "NMAC427/guess-indent.nvim",
        cmd = "GuessIndent",
        lazy = false,
        config = function()
            require("guess-indent").setup {}
        end
    },
    {
        'charludo/projectmgr.nvim',
        cmd = "ProjectMgr",
    },
    {
        "Pocco81/auto-save.nvim",
        lazy = false,
        config = function()
            require("auto-save").setup {}
        end,
    }
}

return plugins
