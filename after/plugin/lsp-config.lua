require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "clangd","jdtls","pyright"}
})
local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lspconfig = require("lspconfig")
function on_attach(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
end
lspconfig.lua_ls.setup({
    capabilities = capabilities
})
lspconfig.clangd.setup({
    on_attach = function (client, bufnr)
       client.server_capabilities.signatureHelpProvider =false 
       on_attach(client, bufnr)
    end,
    capabilities = capabilities
})
lspconfig.jdtls.setup({
    capabilities = capabilities
})
lspconfig.pyright.setup({
    capabilities = capabilities
})


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
