return {
  "chomosuke/typst-preview.nvim",
  ft = "typst",
  version = "1.*",
  opts = {
    dependencies_bin = {
      ["tinymist"] = vim.fn.exepath("tinymist"),
      ["websocat"] = vim.fn.exepath("websocat"),
    }
  },
}
