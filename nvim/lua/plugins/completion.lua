return {
  {
    "saghen/blink.cmp",
    version = "*",
    event = "InsertEnter",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"]   = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["<CR>"]    = { "accept", "fallback" },
        ["<C-Space>"] = { "show", "fallback" },
        ["<C-e>"]   = { "cancel", "fallback" },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      completion = {
        trigger = {
          show_on_insert_on_trigger_character = true,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 100,
        },
        list = {
          selection = {
            auto_insert = false, -- don't auto-insert, just highlight
          },
        },
        menu = {
          draw = {
            treesitter = { "lsp" },
          },
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      fuzzy = {
        implementation = "prefer_rust_with_warning",
      },
    },
  },
}
