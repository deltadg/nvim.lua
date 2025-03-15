return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("diffview").setup({
			use_icons = true, -- Requires 'nvim-web-devicons' plugin
			enhanced_diff_hl = true, -- Highlights word-level changes
			view = {
				merge_tool = {
					layout = "diff3_mixed", -- Three-way diff with inline changes
					disable_diagnostics = true, -- Disables diagnostics in the merge view
				},
			},
			hooks = {
				diff_buf_read = function(bufnr)
					vim.bo[bufnr].bufhidden = "wipe" -- Automatically closes buffer when hidden
				end,
			},
		})

		vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<CR>", { desc = "Open Diffview" })
		vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<CR>", { desc = "Close Diffview" })
		vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFileHistory<CR>", { desc = "File History" })
		vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory %<CR>", { desc = "Current File History" })
	end,
}
