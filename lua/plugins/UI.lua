return {
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
}
