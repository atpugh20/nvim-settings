return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "clangd",
          "pyright",
          "ts_ls",
          "html",
          "cssls",
          "omnisharp",
        },
        automatic_installation = true,
      })

      local capabilities = require("blink.cmp").get_lsp_capabilities()

      local on_attach = function(_, bufnr)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = bufnr, desc = "LSP: " .. desc })
        end

        map("gd",         vim.lsp.buf.definition,      "Go to definition")
        map("gD",         vim.lsp.buf.declaration,     "Go to declaration")
        map("gr",         vim.lsp.buf.references,      "References")
        map("gi",         vim.lsp.buf.implementation,  "Go to implementation")
        map("<Leader>rn", vim.lsp.buf.rename,          "Rename")
        map("<Leader>ca", vim.lsp.buf.code_action,     "Code action")
        map("<Leader>d",  vim.diagnostic.open_float,   "Diagnostics float")
        map("[d",         vim.diagnostic.goto_prev,    "Previous diagnostic")
        map("]d",         vim.diagnostic.goto_next,    "Next diagnostic")
      end

      -- New vim.lsp.config API (nvim 0.11+)
      local servers = { "clangd", "pyright", "ts_ls", "html", "cssls" }
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
          on_attach = on_attach,
        })
      end

      vim.lsp.config("omnisharp", {
        capabilities = capabilities,
        on_attach = on_attach,
        cmd = { "omnisharp" },
        settings = {
          FormattingOptions = { EnableEditorConfigSupport = true },
          RoslynExtensionsOptions = { EnableAnalyzersSupport = true },
        },
      })
    end,
  },
}
