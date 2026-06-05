return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "c", "cpp", "c_sharp",
          "python",
          "javascript", "typescript", "html", "css",
          "json", "lua", "vim", "vimdoc",
        },
        highlight = { enable = true },
        indent   = { enable = true },
      })
    end,
  },
}
