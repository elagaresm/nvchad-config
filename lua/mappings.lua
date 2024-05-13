require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>tt", function()
  require("base46").toggle_theme()
end, { desc = "THEME toggle theme" })

map("n", "<leader>tr", function()
  require("base46").toggle_transparency()
end, { desc = "THEME toggle transparency" })

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
