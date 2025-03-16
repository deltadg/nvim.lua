vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Increase and decrease current number
keymap.set("n", "<leader><Up>", "<C-a>", { desc = "Increase current number by one" })
keymap.set("n", "<leader><Down>", "<C-x>", { desc = "Decrease current number by one" })
