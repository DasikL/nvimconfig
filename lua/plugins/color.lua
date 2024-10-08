return {
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("cyberdream").setup({
                -- Enable transparent background
                transparent = true,

                -- Enable italics comments
                italic_comments = true,

                -- Replace all fillchars with ' ' for the ultimate clean look
                hide_fillchars = false,

                -- Modern borderless telescope theme - also applies to fzf-lua
                borderless_telescope = true,

                -- Set terminal colors used in `:terminal`
                terminal_colors = true,

                -- Use caching to improve performance - WARNING: experimental feature - expect the unexpected!
                -- Early testing shows a 60-70% improvement in startup time. YMMV. Disables dynamic light/dark theme switching.
                cache = false, -- generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache

                theme = {
                    variant = "default", -- use "light" for the light variant. Also accepts "auto" to set dark or light colors based on the current value of `vim.o.background`
                },
                extensions = {
                    telescope = true,
                    notify = true,
                    mini = true,
                },
            })
        end
    },
    {
        "morhetz/gruvbox"
    },
    {
        "sainnhe/everforest",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.everforest_background = 'hard'
            vim.g.everforest_enable_italic = true
        end
    },
    {
        "rebelot/kanagawa.nvim"
    }
}
