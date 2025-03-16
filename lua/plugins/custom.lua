return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "python",
        "bash",
      },
      indent = {
        enable = true,
        disable = {
          "python"
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    depends = "nvim-treesitter/nvim-treesitter",
  },

  {
    "chrisgrieser/nvim-various-textobjs",
    event = "UIEnter",
    opts = { 
      keymaps = {
        useDefaults = true
      }
    },
  },

  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "zbirenbaum/copilot-cmp",
      }
    },
    opts = function()
      local cmp = require "cmp"
      local options = require "nvchad.configs.cmp"
      options.mapping["<Right>"] = cmp.mapping(cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }), { "c" })
      options.mapping["<Up>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s", "c" })
      options.mapping["<Down>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s", "c" })
      options.sources = {
        { name = "copilot" },
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
      }
      return options
    end,
  },

  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    config = function()
      local cmp = require("cmp")
      -- `/`, `?` cmdline setup.
      cmp.setup.cmdline("/", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      cmp.setup.cmdline("?", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      -- `:` cmdline setup.
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          {
            name = "cmdline",
            option = {
              ignore_cmds = { "Man", "!" },
            },
          },
        }),
      })
    end,
  },

  {
    "h-hg/fcitx.nvim",
    event = "VeryLazy",
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
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
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },

  {
    "smoka7/hop.nvim",
    version = "*",
    cmd = "HopChar1",
    keys = {
      { "f", "<cmd> HopChar1<CR>", desc = "Hop" },
    },
    opts = {
      keys = "etovxqpdygfblzhckisuran",
      jump_on_sole_occurrence = false,
      case_insensitive = false,
      multi_windows = true,
    },
  },

  {
    'rmagatti/auto-session',
    lazy = false,
    dependencies = {
      'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
    },

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/code', '~/Downloads', '/' },
      -- log_level = 'debug',
    }
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      window = {
        options = {
          -- signcolumn = "no", -- disable signcolumn
          number = true, -- disable number column
          -- relativenumber = false, -- disable relative numbers
          cursorline = true, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
    },
  },
}
