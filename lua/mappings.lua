require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map({ "n", "i", "v" }, "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map({ "n", "i", "v" }, "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map({ "n", "i", "v" }, "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })
map({ "n", "i", "v" }, "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })

-- map("n", "<leader>za", ":TZAtaraxis<CR>", { desc = "good ol' zen mode" })

map("v", "=", function ()
  require("conform").format({ async = true, lsp_fallback = true })
end, { desc = "Conform format" });

map({ "n", "v" }, "<S-l>", function ()
  require("nvchad.tabufline").next()
end, { desc = "Goto next buffer" })

map({ "n", "v" }, "<S-h>", function ()
  require("nvchad.tabufline").prev()
end, { desc = "Goto prev buffer" })

map({ "n" }, "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
