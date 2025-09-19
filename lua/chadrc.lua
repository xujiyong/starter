-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tokyonight",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
    CursorLine = { bg = "black2" },
	},

  hl_add = {
    CursorLineNr = { fg = "blue" },
    CursorColumn = { bg = "black2" },
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },
}

M.ui = {
  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    -- order = nil,
    -- modules = nil,
  },

  tabufline = {
    lazyload = false,
  },

  cmp = {
    lspkind_text = true,
    style = "default", -- default/flat_light/flat_dark/atom/atom_colored
    format_colors = {
      tailwind = true,
    },
  },
}


M.mason = {
  pkgs = {
    "lua-language-server",
    "stylua",
    "html-lsp",
    "css-lsp",
    "typescript-language-server",
    "tailwindcss-language-server",
    "eslint-lsp",
    "bash-language-server",
    "shfmt",
    "pyright",
  }
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
