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
        "markdown_inline",
        "php",
        "python",
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
    keys = { "<leader>gi" },
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
    keys = { "ys", "ds", "cs" },
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "Wansmer/treesj",
    keys = { { "<leader>mj", desc = "Treesj Toggle" } },
    requires = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {}
    end,
  },

  {
    "Exafunction/windsurf.vim",
    lazy = false,
    config = function()
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
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
    },
  },

  {
    "mg979/vim-visual-multi",
    branch = "master",
    keys = {
      { "<C-n>", mode = { "n", "v" } },
    },
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewClose" },
    keys = {
      { "<leader>go", "<cmd>DiffviewOpen<cr>", desc = "Diff View Open" },
      { "<leader>gc", "<cmd>DiffviewClose<cr>", desc = "Diff View Close" },
    },
  },

  {
    "jvgrootveld/telescope-zoxide",
    keys = {
      { "<leader>z", "<cmd>Telescope zoxide list<cr>", desc = "Zoxide" },
    },
  },

  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- Lazy loaded internally (according to docs)
    cmd = { "Markview" },
    keys = {
      { "<leader>mm", "<cmd>Markview toggle<cr>", desc = "Mark View Toggle" },
      { "<leader>mt", "<cmd>Markview splitToggle<cr>", desc = "Mark View Split Toggle" },
    },
  },
}
