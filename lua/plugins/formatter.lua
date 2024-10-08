return {
    'stevearc/conform.nvim',
    opts = {},
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "isort", "black" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                c = { "clang-format" },
                cpp = { "clang-format" }
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            },
            formatters = {
                clang_format = {
                    prepend_args = { '--style=file', '--fallback-style=Google' },
                },
            },
        })
    end,
}
