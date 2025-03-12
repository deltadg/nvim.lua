return {
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			local bg = "#F7F7F7"
			local bg_highlight = "#D4F6FF"
			local bg_search = "#0A64AC"
			local bg_visual = "#E8F9FF"
			local fg = "#000000"
			local fg_gutter = "#627E97"
			local border = "#547998"

			require("tokyonight").setup({
				style = "day",
				on_colors = function(colors)
					colors.bg = bg
					colors.bg_float = bg
					colors.bg_highlight = bg_highlight
					colors.bg_popup = bg
					colors.bg_search = bg_search
					colors.bg_sidebar = bg
					colors.bg_statusline = bg
					colors.bg_visual = bg_visual
					colors.border = border
					colors.fg = fg
					colors.fg_dark = fg
					colors.fg_float = fg
					colors.fg_gutter = fg_gutter
					colors.fg_sidebar = fg
				end,
			})

			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
