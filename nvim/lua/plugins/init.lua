return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "eslint-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "pyright",
        "emmet-language-server",
        "marksman",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "tsx",
        "typescript",
        "javascript",
        "markdown",
      },
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        ignore = false,
      },
    },
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "typescriptreact",
      "javascriptreact",
      "tsx",
      "vue",
      "astro",
      "html",
      "svelte",
      "php",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "NMAC427/guess-indent.nvim",
    lazy = false,
    config = function()
      require("guess-indent").setup {}
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup {}
    end,
  },

  {
    "nanotee/zoxide.vim",
    cmd = "Z",
  },

  {
    "kylechui/nvim-surround",
    lazy = false,
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "Wansmer/treesj",
    keys = { "<leader>m" },
    requires = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {}
    end,
  },

  {
    "Exafunction/codeium.vim",
    lazy = false,
    config = function()
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
    },
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    lazy = false,
    config = function() end,
    init = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-\\>",
      }
    end,
  },
}
