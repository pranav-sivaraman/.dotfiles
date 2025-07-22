return {
  "saghen/blink.cmp",
  version = "1.*",
  ---@module "blink.cmp"
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",
      ["<C-y>"] = {},
      ["<C-f>"] = { "select_and_accept" },
    },
    appearance = {
      nerd_font_variant = "mono"
    },
    cmdline = {
      keymap = {
        preset = "inherit",
      },
      completion = { menu = { auto_show = true } },
    },

    completion = { documentation = { auto_show = false } },
    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
