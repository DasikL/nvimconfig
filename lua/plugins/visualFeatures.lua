return {
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
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("lualine").setup({
                options = {
                    theme = "auto",
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
            })
        end,
    },
}
