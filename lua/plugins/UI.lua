return {
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			require("nvim-tree").setup({
				filters = {
					git_ignored = false,
				},
				diagnostics = {
					enable = true,
				},
				actions = {
					open_file = {
						quit_on_open = true,
					},
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					section_separators = { "", "" },
					component_separators = { "", "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch" },
					lualine_c = { "filename" },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = { "location" },
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				extensions = { "nvim-tree" },
			})
		end,
	},
	{
		{
			"nvimdev/dashboard-nvim",
			dependencies = {
				{ "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
			},

			event = "VimEnter",
			config = function()
				require("dashboard").setup({
					theme = "doom",
					config = {
						header = require("ascii").art.gaming.doom.logo,
						center = {
							{
								icon = " ",
								desc = "Find File           ",
								key = "b",
								key_format = " %s", -- remove default surrounding `[]`
								action = "Telescope find_files",
							},
							{
								icon = " ",
								desc = "Go to Nvim Config   ",
								key = "f",
								key_format = " %s", -- remove default surrounding `[]`
								action = "Telescope find_files cwd=" .. vim.fn.stdpath("config"),
							},
							{
								icon = " ",
								desc = "Most Recent Files    ",
								key = "w",
								key_format = " %s", -- remove default surrounding `[]`
                                action = "Telescope oldfiles",
							},
						},
					},
				})
			end,
		},
	},
}
