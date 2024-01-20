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
            }
            return opts
        end
    },
    {
        "NMAC427/guess-indent.nvim",
        cmd = "GuessIndent",
        config = function ()
            require("guess-indent").setup {}
        end
    }
}

return plugins
