return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
        "nvim-telescope/telescope.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local telescope = require("telescope.builtin")

        local keymap = vim.keymap -- for conciseness
        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr

            opts.desc = "LSP Information"
            keymap.set("n", "<leader>li", "<cmd>LspInfo<cr>", opts)

            opts.desc = "LSP Code Action"
            keymap.set("n", "<leader>la", vim.lsp.buf.code_action, opts)

            opts.desc = "Rename"
            keymap.set("n", "<leader>lr", vim.lsp.buf.rename, opts)

            opts.desc = "Line Diagnotics"
            keymap.set("n", "gl", vim.diagnostic.open_float, opts)
            
            opts.desc = "Line Diagnotics"
            keymap.set("n", "<leader>ld", vim.diagnostic.open_float, opts)
            
            opts.desc = "All Diagnotics"
            keymap.set("n", "<leader>lD", telescope.diagnostics, opts)

            opts.desc = "Go To Definition"
            keymap.set("n", "gd", telescope.lsp_definitions, opts)
            
            opts.desc = "Go To Declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

            opts.desc = "Go To Implementation"
            keymap.set("n", "gI", telescope.lsp_implementations, opts)

            opts.desc = "Go To References"
            keymap.set("n", "gr", telescope.lsp_references, opts)
        end

        -- used to enable autocompletion (assign to every lsp server config)
        local capabilities = cmp_nvim_lsp.default_capabilities()

        lspconfig["clangd"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        
        lspconfig["bashls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        
        lspconfig["pyright"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        
        lspconfig["cmake"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "cmake", "CMakeLists.txt", }
        })
        
        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        
        lspconfig["texlab"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
        
        lspconfig["yamlls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end,
}
